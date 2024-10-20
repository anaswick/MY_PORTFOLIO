truncate mart.sms_blast_transaction_aggregate;

INSERT INTO mart.sms_blast_transaction_aggregate (
    month_created,
    date_created,
    application,
    full_name,
    Total,
    total_sms
)
SELECT 
    to_char(latest_transactions.created_at AT TIME ZONE 'UTC' AT TIME ZONE 'Asia/Jakarta', 'yyyy-mm') AS month_created,  -- Adjusting timestamp to UTC+7
    CAST(latest_transactions.created_at AT TIME ZONE 'UTC' AT TIME ZONE 'Asia/Jakarta' AS DATE) AS date_created,  -- Adjusting timestamp and casting to DATE type
    latest_transactions.application,
    latest_transactions.full_name,
    COUNT(*) AS Total,
    SUM(latest_transactions.total_sms) as total_sms
FROM (
SELECT 
    s._id,
    s._ingest_ts,
    s.created_at,
    CASE 
        WHEN s.status = 'sent' THEN true
        ELSE false
    END AS charge,  
    s.total_sms ,
    s.application,
    u.full_name,
    ROW_NUMBER() OVER (PARTITION BY s._id ORDER BY s._ingest_ts DESC) AS row_num  -- Rank based on latest _ingest_ts
FROM 
    raw.smssubscribers s
left JOIN raw.applications a ON s.application = a."_id" 
left JOIN raw.users u ON a."user" = u."_id"
WHERE s.status = 'sent'
) AS latest_transactions 
WHERE 
    row_num = 1  -- Filter for the latest transaction per conversation session
GROUP BY 
    month_created,
    date_created,
    latest_transactions.application,
    latest_transactions.full_name
ORDER BY 
    month_created,
    date_created,    
    total_sms desc,
    Total desc;