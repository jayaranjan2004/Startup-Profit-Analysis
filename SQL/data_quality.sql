-- PRDA-01 Profit Analysis
-- Query 2: Data Quality Check

USE profit_analysis;

SELECT
    COUNT(*) AS total_rows,
    COUNT(rd_spend) AS rd_values,
    COUNT(administration) AS admin_values,
    COUNT(marketing_spend) AS marketing_values,
    COUNT(state) AS state_values,
    COUNT(profit) AS profit_values
FROM startups;