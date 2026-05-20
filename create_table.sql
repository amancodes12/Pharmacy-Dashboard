-- Create database
CREATE DATABASE pharmacy_sales_db;

-- Select database
USE pharmacy_sales_db;

-- Create main table
CREATE TABLE pharmacy_sales (
    datum DATE,
    M01AB DECIMAL(10,2),
    M01AE DECIMAL(10,2),
    N02BA DECIMAL(10,2),
    N02BE DECIMAL(10,2),
    N05B DECIMAL(10,2),
    N05C DECIMAL(10,2),
    R03 DECIMAL(10,2),
    R06 DECIMAL(10,2),
    year_col INT,
    month_col INT,
    hour_col INT,
    weekday_name VARCHAR(20),
    total_sales DECIMAL(12,2)
);