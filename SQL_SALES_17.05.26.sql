create DATABASE sales_db;
USE sales_db;

truncate table Orders;

CREATE TABLE Orders (
    Order_ID VARCHAR(10) PRIMARY KEY,
    Customer_ID VARCHAR(10),
    Customer_Name VARCHAR(100),
    Region VARCHAR(50),
    State VARCHAR(50),
    City VARCHAR(50),
    Category VARCHAR(50),
    Product_Name VARCHAR(100),
    Quantity INT,
    Unit_Price DECIMAL(10,2),
    Discount_Percent DECIMAL(5,2),
    Total_Sales DECIMAL(12,2),
    Sales_Date DATE,
    Payment_Method VARCHAR(50),
    Delivery_Status VARCHAR(50),
    Customer_Segment VARCHAR(50)
);

SHOW VARIABLES LIKE 'secure_file_priv';

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/SALES_SQL_17.5.26.csv"
INTO TABLE Orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
 Order_ID,
 Customer_ID,
 Customer_Name,
 Region,
 State,
 City,
 Category,
 Product_Name,
 Quantity,
 Unit_Price,
 @Discount_Percent,
 Total_Sales,
 @sales_date,
 Payment_Method,
 Delivery_Status,
 Customer_Segment
)
SET
 Discount_Percent = REPLACE(@Discount_Percent, '%', ''),
 Sales_Date = STR_TO_DATE(@sales_date, '%d-%m-%Y');

SELECT * FROM Orders;