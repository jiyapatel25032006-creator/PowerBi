SELECT Order_Date, Ship_Date
FROM Orders_Raw
LIMIT 20;

SELECT * 
FROM Orders;

-- Display All Records
SELECT * 
FROM Orders;

-- Select Specific Columns
SELECT Customer_Name,Product_Name,Sales,Profit
FROM Orders;

-- Filter by State
SELECT * 
FROM Orders
WHERE State_or_Province = 'california';

-- Negative Profit Orders
SELECT * 
FROM Orders
WHERE Profit<0;

-- Discount Based Filtering
SELECT * 
FROM Orders
WHERE Discount> 2;

-- Sort Data
SELECT * 
FROM Orders
ORDER BY Sales DESC;

-- Top Selling Orders
SELECT * 
FROM Orders
ORDER BY Sales DESC
LIMIT 10;

-- Unique Customer Segments
SELECT DISTINCT Customer_Segment
FROM Orders;

-- Sales Range Filtering
SELECT * 
FROM Orders
WHERE Sales BETWEEN 500 AND 2000;

-- Customer Name Pattern
SELECT * 
FROM Orders
WHERE Customer_Name LIKE 'A%';

-- Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM Orders;

-- Average Profit
SELECT AVG(Profit) AS Avg_Profit
FROM Orders;

-- Maximum Sales
SELECT MAX(Sales) AS Highest_Sales
FROM Orders;

-- Minimum Profit
SELECT MIN(Profit) AS Lowest_Profit
FROM Orders;

 -- Total Number of Orders
 SELECT COUNT(*) AS Total_Orders
FROM Orders;

-- Sales by Region
SELECT SUM(Sales) AS Total_Sales
FROM Orders
GROUP BY Region;

-- Profit by State
SELECT SUM(Profit) AS Total_Profit,State_or_Province
FROM Orders
GROUP BY State_or_Province;

-- Average Sales by Segment
SELECT AVG(Sales) AS Total_Sales,Customer_Segment
FROM Orders
GROUP BY Customer_Segment;

-- Customer Count by Region
SELECT COUNT(Region) AS Total_Customers,Region
FROM Orders
GROUP BY Region;

-- Quantity Sold by Category
SELECT SUM(Quantity_ordered_new) AS Total_Quantity,Product_Category
FROM Orders
GROUP BY Product_Category;

-- High Sales Regions
SELECT SUM(Sales) AS Total_Sales,Region
FROM Orders
GROUP BY Region
HAVING Total_Sales>50000;

-- High Profit Categories
SELECT AVG(Profit) AS Avg_Profit,Product_Category
FROM Orders
GROUP BY Product_Category
HAVING Avg_Profit>100;

-- Monthly Orders
SELECT MONTH(Order_Date) AS Month_No,COUNT(*) AS Total_Orders
FROM Orders
GROUP BY MONTH(Order_Date)
ORDER BY Month_No;

-- Shipping Delay Analysis


-- Date Filtering
SELECT *
FROM Orders
WHERE Order_Date > '6/1/2015';

-- Returned Orders
CREATE TABLE Returns(
Order_ID int primary key ,Status VARCHAR (50)
);

SHOW VARIABLES LIKE 'secure_file_priv';

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/return_sql_7.6.26.csv'
INTO TABLE Returns
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
	Order_ID,
	status
);

