SELECT 
    ca.application, 
    COUNT(ca._id) AS number_of_agents,  -- Total count of agents per application
    SUM(CASE 
            WHEN ca.parent IS NULL AND ca.supervisor = FALSE THEN 1 
            ELSE 0 
        END) AS parent_agents,  -- Count of parent agents
    SUM(CASE 
            WHEN ca.parent IS NOT NULL AND ca.supervisor = TRUE THEN 1 
            ELSE 0 
        END) AS supervisor_agents,  -- Count of supervisor agents
    SUM(CASE 
            WHEN NOT (ca.parent IS NULL AND ca.supervisor = FALSE) AND NOT (ca.parent IS NOT NULL AND ca.supervisor = TRUE) THEN 1 
            ELSE 0 
        END) AS regular_agents,  -- Count of regular agents (those who are neither parent nor supervisor)
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
    ca.application NOT IN (SELECT application FROM raw.master_testing_demo_account mtda)
GROUP BY 
    ca.application, 
    u.full_name, 
    b.billing_date, 
    b.next_billing_date
ORDER BY 
    number_of_agents DESC;
