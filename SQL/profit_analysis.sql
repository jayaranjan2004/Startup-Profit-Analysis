-- PRDA-01 Profit Analysis
-- Query 5: Profit Analysis

USE profit_analysis;

-- All startups ranked by profit
SELECT
    state,
    rd_spend,
    administration,
    marketing_spend,
    profit
FROM startups
ORDER BY profit DESC;

-- Startups with profit above 150,000
SELECT
    state,
    rd_spend,
    administration,
    marketing_spend,
    profit
FROM startups
WHERE profit > 150000
ORDER BY profit DESC;

-- Top 5 most profitable startups
SELECT
    state,
    rd_spend,
    administration,
    marketing_spend,
    profit
FROM startups
ORDER BY profit DESC
LIMIT 5;