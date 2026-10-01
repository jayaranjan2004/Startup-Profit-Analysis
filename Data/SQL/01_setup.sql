-- PRDA-01 Profit Analysis
-- Query 1: Database & Table Setup

CREATE DATABASE profit_analysis;

USE profit_analysis;

CREATE TABLE startups (
    rd_spend DECIMAL(12,2),
    administration DECIMAL(12,2),
    marketing_spend DECIMAL(12,2),
    state VARCHAR(50),
    profit DECIMAL(12,2)
);