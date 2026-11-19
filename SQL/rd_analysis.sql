-- PRDA-01 Profit Analysis
-- Query 6: R&D Analysis

USE profit_analysis;

SELECT
    CASE
        WHEN rd_spend < 50000 THEN 'Low R&D'
        WHEN rd_spend <= 100000 THEN 'Medium R&D'
        ELSE 'High R&D'
    END AS rd_category,
    COUNT(*) AS startup_count,
    ROUND(AVG(rd_spend), 2) AS avg_rd_spend,
    ROUND(AVG(profit), 2) AS avg_profit
FROM startups
GROUP BY
    CASE
        WHEN rd_spend < 50000 THEN 'Low R&D'
        WHEN rd_spend <= 100000 THEN 'Medium R&D'
        ELSE 'High R&D'
    END
ORDER BY avg_profit DESC;