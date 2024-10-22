SELECT 
    ca.application, 
    COUNT(ca._id) AS total_agents,  -- Total count of agents per application
    SUM(CASE
            WHEN ca.parent IS NULL AND ca.supervisor = TRUE THEN 1
            ELSE 0
        END) AS parent_agents,  -- Count of parent agents
    SUM(CASE
            WHEN ca.parent IS NOT NULL AND ca.supervisor = TRUE THEN 1
            ELSE 0
        END) AS supervisor_agents,  -- Count of supervisor agents
    SUM(CASE
            WHEN ca.extend_agent = 'owner' THEN 1
            ELSE 0
        END) AS owner_agents,  -- Count of owner agents
    SUM(CASE
            WHEN ca.extend_agent = 'non_agent' THEN 1
            ELSE 0
        END) AS non_agent_agents,  -- Count of non-agent agents
    SUM(CASE
            WHEN ca.supervisor = FALSE AND (ca.extend_agent = 'agent' or ca.extend_agent is null) THEN 1
            ELSE 0
        END) AS agent_agents,  -- Count of regular agents
    u.full_name, 
    b.billing_date, 
    b.next_billing_date,
    AGE(b.next_billing_date, NOW()) AS duration_left,  -- Calculate duration left
    (b.next_billing_date > NOW()) AS is_active  -- Boolean column to check if duration left is greater than 0
FROM 
    raw.chat_agents ca
LEFT JOIN 
    raw.billingmasters b ON ca.application = b.application
LEFT JOIN 
    raw.applications a ON ca.application = a."_id" 
LEFT JOIN 
    raw.users u ON a."user" = u."_id"
WHERE 
    ca.application NOT IN (SELECT mtda.application FROM raw.master_testing_demo_account mtda)
GROUP BY 
    ca.application, 
    u.full_name, 
    b.billing_date, 
    b.next_billing_date
ORDER BY 
    total_agents DESC;