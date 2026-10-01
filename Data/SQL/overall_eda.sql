-- PRDA-01 Profit Analysis
-- Query 3: Overall EDA

USE profit_analysis;

SELECT
    AVG(rd_spend) AS avg_rd_spend,
    AVG(administration) AS avg_administration,
    AVG(marketing_spend) AS avg_marketing_spend,
    AVG(profit) AS avg_profit
FROM startups;

SELECT
    MIN(profit) AS min_profit,
    MAX(profit) AS max_profit
FROM startups;

SELECT
    SUM(rd_spend) AS total_rd_spend,
    SUM(administration) AS total_administration,
    SUM(marketing_spend) AS total_marketing_spend,
    SUM(profit) AS total_profit
FROM startups;