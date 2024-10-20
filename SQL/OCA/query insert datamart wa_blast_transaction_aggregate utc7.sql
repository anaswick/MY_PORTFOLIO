truncate 

INSERT INTO mart.wa_blast_transaction_aggregate (
    month_received,
    date_received,
    client_name,
    wabaNumber,
    Marketing,
    Utility,
    Service,
    Authentication,
    Total
)
SELECT 
    to_char(latest_transactions."receivedTimestamp" AT TIME ZONE 'UTC' AT TIME ZONE 'Asia/Jakarta', 'yyyy-mm') AS month_received,  -- Adjusting timestamp to UTC+7
    CAST(latest_transactions."receivedTimestamp" AT TIME ZONE 'UTC' AT TIME ZONE 'Asia/Jakarta' AS DATE) AS date_received,  -- Adjusting timestamp and casting to DATE type
    latest_transactions.client_name,
    latest_transactions."wabaNumber",
    SUM(CASE WHEN latest_transactions."categoryType" = 'marketing' THEN 1 ELSE 0 END) AS Marketing,
    SUM(CASE WHEN latest_transactions."categoryType" = 'utility' THEN 1 ELSE 0 END) AS Utility,
    SUM(CASE WHEN latest_transactions."categoryType" = 'service' THEN 1 ELSE 0 END) AS Service,
    SUM(CASE WHEN latest_transactions."categoryType" = 'authentication' THEN 1 ELSE 0 END) AS Authentication,
    COUNT(*) AS Total
FROM (
    SELECT 
        wc._id,  -- Unique ID for each conversation session
        wc._ingest_ts,  -- Timestamp when the record was ingested
        wc.created_at,  -- Created timestamp of the conversation
        wc."receivedTimestamp",
        wc.charge,  -- Charging flag
        wc.application,
        wc."wabaNumber",
        cd.client_name,
        wc."categoryType",
        ROW_NUMBER() OVER (PARTITION BY wc._id ORDER BY wc._ingest_ts DESC) AS row_num  -- Rank based on latest _ingest_ts
    FROM 
        raw.wanew_conversationsessions wc
    LEFT JOIN raw.master_client_data cd ON wc."wabaNumber" = cd.wabanumber
    WHERE 
        wc.charge = true  -- Only consider charged transactions 
) AS latest_transactions 
WHERE 
    row_num = 1  -- Filter for the latest transaction per conversation session
GROUP BY 
    month_received,
    date_received,
    latest_transactions.client_name,
    latest_transactions."wabaNumber"
ORDER BY 
    month_received,
    date_received,    
    Total DESC;