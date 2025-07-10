CREATE DATABASE basic_queries4;

USE basic_queries4;

CREATE TABLE Product_Sales(
	Product_Name VARCHAR(50),
    Category VARCHAR(30),
    Units_Sold INT,
    Revenue INT
);

SELECT * FROM Product_Sales;

INSERT INTO Product_Sales(Product_Name,Category,Units_Sold,Revenue)VALUES
('Laptop','Electronics',20,120000);

INSERT INTO Product_Sales(Product_Name,Category,Units_Sold,Revenue)VALUES
('Headphones','Electronics',50,25000);

INSERT INTO Product_Sales(Product_Name,Category,Units_sold,Revenue)VALUES
('Notebook','stationery',150,7500);
    
INSERT INTO Product_Sales(Product_Name,Category,Units_Sold,Revenue)VALUES
('Pen','Stationery',300,4500);

INSERT INTO Product_Sales(Product_Name,Category,Units_Sold,Revenue)VALUES
('Chair','Furniture',10,8000);

INSERT INTO Product_Sales(Product_Name,Category,Units_Sold,Revenue)VALUES
('Table','Furniture',5,9000);

-- UPDATE increase revenue for chair
UPDATE Product_Sales
SET Revenue = Revenue + 1000
WHERE Product_Name = 'Chair';

-- DELETE Remove entry for pen
DELETE  FROM Product_Sales 
WHERE Product_Name = 'Pen';

-- LIMIT Show only top 2 records
SELECT * FROM Product_Sales
LIMIT 3;

-- MIN and MAX on revenue 
SELECT MIN(Revenue) AS MIN_Revenue,MAX(Revenue) AS MAX_Revenue
FROM Product_Sales;

-- MIN and MAX on Units_Sold
SELECT MIN(Units_sold) AS MIN_Units_Sold,MAX(Units_Sold) AS MAX_Units_Sold
FROM Product_Sales;

-- COUNT,AVG,SUM On units_Sold
SELECT 
Count(*) AS total_units_Sold,
AVG(Units_Sold) AS AVG_Units_Sold,
SUM(Units_Sold) AS total_SUM_Units_Sold
FROM Product_Sales;

-- LIKE Find Products containing top
SELECT * FROM Product_Sales
WHERE Product_name LIKE 'L%'



    