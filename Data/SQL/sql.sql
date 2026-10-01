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