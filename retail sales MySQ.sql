SELECT SUM(Net_Sales) AS Total_Revenue
FROM `retail_sales_database`.`retail_sales_dataset1`;


SELECT * 
FROM `retail_sales_database`.`retail_sales_dataset1`;


SELECT  Country, SUM(Total_Sales)
FROM `retail_sales_database`.`retail_sales_dataset1`GROUP BY Country;

SELECT  Customer_Name, SUM(Net_Sales)
FROM `retail_sales_database`.`retail_sales_dataset1`GROUP BY Customer_Name;


SELECT YEAR(Order_date) AS Year, MONTH(Order_Date) AS Month, SUM(Total_Sales) AS Monthly_Revenue
FROM `retail_sales_database`.`retail_sales_dataset1`GROUP BY YEAR (Order_Date), MONTH(Order_Date) ORDER BY Year, Month; 
 
SELECT Product_Category, SUM(Total_Sales) AS Total_Sales
FROM `retail_sales_database`.`retail_sales_dataset1` GROUP BY Product_Category;

SELECT Country, SUM(Discount) AS Total_Discount
FROM `retail_sales_database`.`retail_sales_dataset1` GROUP BY Country;

SELECT Sales_Channel, SUM(Total_Sales) AS Total_Sales
FROM `retail_sales_database`.`retail_sales_dataset1` GROUP BY Sales_Channel;

SELECT Region, AVG(Total_Sales) AS Avg_Order_Value
FROM `retail_sales_database`.`retail_sales_dataset1` GROUP BY Region;

SELECT * 
FROM `retail_sales_database`.`retail_sales_dataset1` ORDER BY Total_Sales DESC LIMIT 1;

SELECT Customer_Name, COUNT(Order_ID) AS Purchase_Count
FROM `retail_sales_database`.`retail_sales_dataset1` GROUP BY Customer_Name HAVING COUNT(Order_ID)>5;