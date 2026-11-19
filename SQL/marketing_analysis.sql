-- PRDA-01 Profit Analysis
-- Query 7: Marketing Analysis

USE profit_analysis;

SELECT
    CASE
        WHEN marketing_spend < 100000 THEN 'Low Marketing'
        WHEN marketing_spend <= 250000 THEN 'Medium Marketing'
        ELSE 'High Marketing'
    END AS marketing_category,
    COUNT(*) AS startup_count,
    ROUND(AVG(marketing_spend), 2) AS avg_marketing_spend,
    ROUND(AVG(profit), 2) AS avg_profit
FROM startups
GROUP BY
    CASE
        WHEN marketing_spend < 100000 THEN 'Low Marketing'
        WHEN marketing_spend <= 250000 THEN 'Medium Marketing'
        ELSE 'High Marketing'
    END
ORDER BY avg_profit DESC;