USE profit_analysis;
CREATE TABLE startups (
    rd_spend DECIMAL(12,2),
    administration DECIMAL(12,2),
    marketing_spend DECIMAL(12,2),
    state VARCHAR(50),
    profit DECIMAL(12,2)
);
SELECT COUNT(*) AS total_rows
FROM startups;
SELECT
    COUNT(*) AS total_rows,
    COUNT(rd_spend) AS rd_values,
    COUNT(administration) AS admin_values,
    COUNT(marketing_spend) AS marketing_values,
    COUNT(state) AS state_values,
    COUNT(profit) AS profit_values
FROM startups;
SELECT AVG(profit)
FROM startups;
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
SELECT
    state,
    AVG(profit) AS avg_profit
FROM startups
GROUP BY state;
SELECT
    state,
    AVG(rd_spend) AS avg_rd_spend,
    AVG(administration) AS avg_administration,
    AVG(marketing_spend) AS avg_marketing_spend,
    AVG(profit) AS avg_profit
FROM startups
GROUP BY state;
SELECT
    state,
    rd_spend,
    administration,
    marketing_spend,
    profit
FROM startups
ORDER BY profit DESC;
SELECT
    state,
    rd_spend,
    administration,
    marketing_spend,
    profit
FROM startups
WHERE profit > 150000
ORDER BY profit DESC;
SELECT *
FROM startups
WHERE state = 'California'
ORDER BY profit DESC;
SELECT *
FROM startups
WHERE state = 'California'
ORDER BY profit DESC
LIMIT 3;
SELECT *
FROM startups
ORDER BY profit DESC
LIMIT 5;