CREATE DATABASE Basic_Queries3;

USE Basic_Queries3;

CREATE TABLE Sales_data(
	Month VARCHAR(10),
    Sales INT,
    profit INT
);

SELECT * from Sales_data;

INSERT INTO Sales_data(Month,Sales,profit)VALUES
('Jan',200,50);

INSERT INTO Sales_data(Month,Sales,Profit)VALUES
('Feb',250,70);

INSERT INTO Sales_data(Month,Sales,profit)VALUES
('Mar',300,90);

INSERT INTO Sales_data(Month,Sales,Profit)VALUES
('Apr',280,85);

INSERT INTO Sales_data(Month,Sales,profit)VALUES
('May',320,95);

-- update sales data
UPDATE Sales_data
SET profit = 75
WHERE Month = 'Feb';

-- Delete Sales data month of feb
DELETE FROM Sales_data
WHERE Month = 'Jan';

-- LIMIT Of SALES data
SELECT * FROM Sales_data
LIMIT 3;

-- Max and Min sales data
SELECT MIN(Sales)AS MIN_Sales,MAX(Sales) AS MAX_Sales
FROM Sales_data;

-- count of total entries,average of profit and sum of total profit
SELECT 
COUNT(*) AS Total_Entries,
AVG(profit) AS Avg_profit,
SUM(profit) AS Total_profit
FROM Sales_data;

-- m series
SELECT * FROM Sales_data
WHERE Month LIKE 'M%';


