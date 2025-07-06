-- Login to MySQL
mysql -uroot -pcloudera

-- Create database and table
CREATE DATABASE retail;
USE retail;

CREATE TABLE sales (
    id INT PRIMARY KEY,
    product VARCHAR(100),
    quantity INT,
    price FLOAT
);

-- Insert sample data
INSERT INTO sales VALUES 
(1, 'Pen', 10, 5.5),
(2, 'Notebook', 5, 25.0),
(3, 'Pencil', 20, 3.0);
