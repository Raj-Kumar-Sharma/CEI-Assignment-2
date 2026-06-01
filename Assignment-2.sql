
-- DATA EXPLORATION

-- Query 1: Examine Table Schema
DESCRIBE superstore;

-- Query 2: Retrieve Sample Records
SELECT *
FROM superstore
LIMIT 10;

-- Query 3: Validate Total Number of Records
SELECT COUNT(*) AS Total_Rows
FROM superstore;


-- DATA FILTERING

-- Query 4: Region Filter
SELECT *
FROM superstore
WHERE Region = 'West';

-- Query 5: Product Category Filter
SELECT *
FROM superstore
WHERE Category = 'Technology';

-- Query 6: Order Date Filter
SELECT *
FROM superstore
WHERE `Order Date`
BETWEEN '2017-01-01'
AND '2017-12-31';

-- Query 7: Sales Amount Filter
SELECT *
FROM superstore
WHERE Sales > 1000;

-- Query 8: Combined Filter
SELECT *
FROM superstore
WHERE Region = 'West'
  AND Category = 'Technology'
  AND Sales > 1000;


-- AGGREGATION ANALYSIS

-- Query 9: Total Sales by Region
SELECT
    Region,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY Region;

-- Query 10: Total Quantity Sold by Category
SELECT
    Category,
    SUM(Quantity) AS Total_Quantity
FROM superstore
GROUP BY Category;

-- Query 11: Average Sales by Category
SELECT
    Category,
    ROUND(AVG(Sales),2) AS Avg_Sales
FROM superstore
GROUP BY Category;

-- Query 12: Category-wise Sales and Profit
SELECT
    Category,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY Category;



-- SORTING AND RANKING

-- Query 13: Top 10 Products by Sales
SELECT
    `Product Name`,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 14: Top Product Categories by Sales
SELECT
    Category,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Query 15: Most Profitable States
SELECT
    State,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY State
ORDER BY Total_Profit DESC
LIMIT 10;


-- BUSINESS USE CASES

-- Query 16: Monthly Sales Trend Analysis
SELECT
    YEAR(`Order Date`) AS Year,
    MONTH(`Order Date`) AS Month,
    ROUND(SUM(Sales),2) AS Monthly_Sales
FROM superstore
GROUP BY YEAR(`Order Date`),
         MONTH(`Order Date`)
ORDER BY Year, Month;

-- Query 17: Top Customers by Sales
SELECT
    `Customer Name`,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 18: Customer Profitability Analysis
SELECT
    `Customer Name`,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Profit DESC
LIMIT 10;

-- Query 19: Duplicate Record Detection
SELECT
    `Order ID`,
    COUNT(*) AS Duplicate_Count
FROM superstore
GROUP BY `Order ID`
HAVING COUNT(*) > 1;


-- DATA VALIDATION

-- Query 20: Verify Total Row Count
SELECT COUNT(*) AS Total_Rows
FROM superstore;

-- Query 21: Detect Duplicate Records
SELECT
    `Order ID`,
    COUNT(*) AS Duplicate_Count
FROM superstore
GROUP BY `Order ID`
HAVING COUNT(*) > 1;

-- Query 22: Check for Missing Values
SELECT *
FROM superstore
WHERE Sales IS NULL;

-- Query 23: Identify Negative-Profit Transactions
SELECT *
FROM superstore
WHERE Profit < 0;