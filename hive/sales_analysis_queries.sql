-- Open Hive shell
hive

-- Create Hive table
CREATE DATABASE IF NOT EXISTS retail_db;
USE retail_db;

CREATE EXTERNAL TABLE sales_data (
    id INT,
    product STRING,
    quantity INT,
    price FLOAT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/cloudera/retail_sales';

-- Total revenue
SELECT product, quantity * price AS revenue FROM sales_data;

-- Total items sold per product
SELECT product, SUM(quantity) AS total_quantity FROM sales_data GROUP BY product;
