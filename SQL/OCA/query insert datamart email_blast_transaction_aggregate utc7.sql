truncate mart.email_blast_transaction_aggregate;

INSERT INTO mart.email_blast_transaction_aggregate (
    month_created,
    date_created,
    full_name,
    application,
    Total
)
SELECT 
    to_char(latest_transactions.created_at AT TIME ZONE 'UTC' AT TIME ZONE 'Asia/Jakarta', 'yyyy-mm') AS month_created,  -- Adjusting timestamp to UTC+7
    CAST(latest_transactions.created_at AT TIME ZONE 'UTC' AT TIME ZONE 'Asia/Jakarta' AS DATE) AS date_created,  -- Adjusting timestamp and casting to DATE type
    latest_transactions.full_name,
    latest_transactions.application,
    COUNT(*) AS Total
FROM (
SELECT 
    e._id,
    e._ingest_ts,
    e.created_at,
    CASE 
        WHEN e.status IN ('delivered','read','opened','unsubscribe') THEN true
        WHEN e.status = 'failed' AND e.message IS NOT NULL THEN true
        ELSE false
    END AS charge,  -- Added comma here
    e.application,
    u.full_name,
    ROW_NUMBER() OVER (PARTITION BY e._id ORDER BY e._ingest_ts DESC) AS row_num  -- Rank based on latest _ingest_ts
FROM 
    raw.emailsubscribers e
LEFT JOIN raw.applications a ON e.application = a."_id" 
LEFT JOIN raw.users u ON a."user" = u."_id"
WHERE 
    (
        e.status IN ('delivered','read','opened','unsubscribe') 
        OR (e.status = 'failed' AND e.message IS NOT NULL)
    ) 
) AS latest_transactions 
WHERE 
    row_num = 1  -- Filter for the latest transaction per conversation session
GROUP BY 
    month_created,
    date_created,
    latest_transactions.full_name,
    latest_transactions.application
ORDER BY 
    month_created,
    date_created,    
    Total DESC;