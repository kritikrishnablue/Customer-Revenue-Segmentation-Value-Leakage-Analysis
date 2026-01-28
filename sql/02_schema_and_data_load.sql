-- Objective: Create schema and load raw Walmart transaction data

DROP DATABASE IF EXISTS walmart_analysis;
CREATE DATABASE walmart_analysis;
USE walmart_analysis;

DROP TABLE IF EXISTS transactions;

CREATE TABLE transactions (
    user_id INT,
    product_id VARCHAR(20),
    gender CHAR(1),
    age VARCHAR(10),
    occupation INT,
    city_category CHAR(1),
    stay_in_current_city_years VARCHAR(10),
    marital_status INT,
    product_category_1 INT,
    product_category_2 INT NULL,
    product_category_3 INT NULL,
    purchase_amount DOUBLE
);

LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/walmart_black_friday_raw.csv'
INTO TABLE transactions
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    user_id,
    product_id,
    gender,
    age,
    occupation,
    city_category,
    stay_in_current_city_years,
    marital_status,
    product_category_1,
    @pc2,
    @pc3,
    purchase_amount
)
SET
    product_category_2 = NULLIF(@pc2, ''),
    product_category_3 = NULLIF(@pc3, '');
