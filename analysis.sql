-- ==========================================================
-- PHARMACY SALES PROJECT - KPI AND BUSINESS ANALYSIS
-- ==========================================================

USE pharmacy_sales_db;

-- Total pharmacy sales from 2014 to 2019
SELECT
    ROUND(SUM(total_sales), 2) AS total_pharmacy_sales
FROM pharmacy_sales;

-- Average sales per day
select
round(avg(total_sales), 2) as avg_daily_sales
from pharmacy_sales;

-- Maximum daily sales and corresponding date
select datum, total_sales from pharmacy_sales
order by total_sales desc
limit 1;

-- Minimum daily sales and corresponding date
select datum, total_sales from pharmacy_sales
order by total_sales asc
limit 1;

-- Number of days in the dataset
select count(*) as total_days
from pharmacy_sales;

-- Total sales by drug category over the full period
SELECT
    ROUND(SUM(M01AB), 2) AS M01AB_total,
    ROUND(SUM(M01AE), 2) AS M01AE_total,
    ROUND(SUM(N02BA), 2) AS N02BA_total,
    ROUND(SUM(N02BE), 2) AS N02BE_total,
    ROUND(SUM(N05B), 2)  AS N05B_total,
    ROUND(SUM(N05C), 2)  AS N05C_total,
    ROUND(SUM(R03), 2)   AS R03_total,
    ROUND(SUM(R06), 2)   AS R06_total
FROM pharmacy_sales;

-- Monthly total sales
select year_col, month_col,
round(sum(total_sales), 2) as monthly_sales
from pharmacy_sales
group by year_col, month_col
order by year_col, month_col;

-- Annual total sales
select year_col,
round(sum(total_sales), 2) as yearly_sales
from pharmacy_sales 
group by year_col
order by year_col;

-- Average sales by day of the week
SELECT
    weekday_name,
    ROUND(AVG(total_sales), 2) AS avg_sales
FROM pharmacy_sales
GROUP BY weekday_name
ORDER BY avg_sales DESC;