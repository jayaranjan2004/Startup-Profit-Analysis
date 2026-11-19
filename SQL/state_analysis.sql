-- PRDA-01 Profit Analysis
-- Query 4: State Analysis

USE profit_analysis;

SELECT
    state,
    COUNT(*) AS startup_count,
    ROUND(AVG(rd_spend), 2) AS avg_rd_spend,
    ROUND(AVG(administration), 2) AS avg_administration,
    ROUND(AVG(marketing_spend), 2) AS avg_marketing_spend,
    ROUND(AVG(profit), 2) AS avg_profit
FROM startups
GROUP BY state
ORDER BY avg_profit DESC;