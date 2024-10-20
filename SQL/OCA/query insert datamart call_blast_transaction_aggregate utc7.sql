truncate mart.call_blast_transaction_aggregate;

INSERT INTO mart.call_blast_transaction_aggregate (
    month_created,
    date_created,
    full_name,
    application,
    Total,
    total_duration  -- Added this to match the SUM of duration
)
SELECT 
    to_char(latest_transactions.created_at AT TIME ZONE 'UTC' AT TIME ZONE 'Asia/Jakarta', 'yyyy-mm') AS month_created,  -- Adjusting timestamp to UTC+7
    CAST(latest_transactions.created_at AT TIME ZONE 'UTC' AT TIME ZONE 'Asia/Jakarta' AS DATE) AS date_created,  -- Adjusting timestamp and casting to DATE type
    latest_transactions.full_name,
    latest_transactions.application,
    COUNT(*) AS Total,  -- Count transactions
    SUM(latest_transactions.duration) AS total_duration  -- Summing the duration
FROM (
    SELECT 
        c._id,
        c._ingest_ts,
        c.created_at,
        CASE 
            WHEN c.status = 'answered' THEN true
            ELSE false
        END AS charge,  -- Removed the extra equal sign
        c.application,  -- Correct alias for application
        u.full_name,
        c.duration,
        ROW_NUMBER() OVER (PARTITION BY c._id ORDER BY c._ingest_ts DESC) AS row_num  -- Rank based on latest _ingest_ts
    FROM 
        raw.call_detail_records c
    LEFT JOIN raw.applications a ON c.application = a."_id"  -- Corrected alias usage for 'application'
    LEFT JOIN raw.users u ON a."user" = u."_id"  -- Corrected alias usage for 'user'
    WHERE c.status = 'answered'
) AS latest_transactions 
WHERE row_num = 1  -- Filter for the latest transaction per call session
GROUP BY 
    month_created,
    date_created,
    latest_transactions.full_name,
    latest_transactions.application
ORDER BY 
    month_created,
    date_created,
    Total DESC;
