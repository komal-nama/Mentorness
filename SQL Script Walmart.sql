SELECT * 
FROM walmart_sales_data.walmartdata
WHERE Branch = 'A';

SELECT Product_line, SUM(Total) as Total_Sales
FROM walmartdata 
GROUP BY Product_line;

SELECT * 
FROM walmartdata
WHERE Payment = 'Cash';

SELECT City, SUM(gross_income) as Total_Gross_Income
FROM walmartdata
GROUP BY City;

SELECT Branch, AVG(Rating) as AVG_Rating
FROM walmartdata
GROUP BY Branch;

SELECT Product_line, SUM(Quantity) as Total_Quantity_Sold
FROM walmartdata
GROUP BY Product_line;

SELECT *
FROM walmartdata
ORDER BY UNIT_PRICE DESC
LIMIT 5;

SELECT *
FROM walmartdata
WHERE gross_margin_percentage > 30;

SELECT *
FROM walmartdata
WHERE DAYOFWEEK(STR_TO_DATE(Date, '%d-%m-%Y')) IN (1, 7);

SELECT DATE_FORMAT(STR_TO_DATE(Date, '%d-%m-%Y'), '%Y-%m') AS Month, 
       SUM(Total) AS Total_Sales, 
       SUM(gross_income) AS Total_Gross_Income
FROM walmartdata
GROUP BY DATE_FORMAT(STR_TO_DATE(Date, '%d-%m-%Y'), '%Y-%m');

SELECT COUNT(*) AS Transactions_After_6PM
FROM walmartdata
WHERE TIME(Time) > '18:00:00';

SELECT *
FROM WalmartData
WHERE Total > (SELECT AVG(Total) FROM WalmartData);

SELECT Branch, Date, 
       SUM(gross_income) 
       OVER (PARTITION BY Branch 
       ORDER BY STR_TO_DATE(Date, '%d-%m-%Y')) AS Cumulative_Gross_Income
FROM WalmartData;

SELECT City, Customer_type, SUM(cogs) AS Total_COGS
FROM WalmartData
GROUP BY City, Customer_type;





