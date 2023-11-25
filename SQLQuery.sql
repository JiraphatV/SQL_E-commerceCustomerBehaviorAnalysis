select * from [dbo].[ecommerce_customer_data_large]

-- 1. Popular Product Categories
SELECT [Product_Category], COUNT(*) as PurchaseCount
FROM [dbo].[ecommerce_customer_data_large]
GROUP BY [Product_Category]
ORDER BY PurchaseCount DESC;

-- 2. Customer Demographics (ordered by Age)
SELECT [Age], [Gender], COUNT(*) as CustomerCount
FROM [dbo].[ecommerce_customer_data_large]
GROUP BY [Age], [Gender]
ORDER BY CustomerCount DESC;

-- 3. Purchasing Trends Over Time
SELECT FORMAT([Purchase_Date], 'yyyy-MM') as PurchaseMonth, SUM([Total_Purchase_Amount]) as TotalAmount
FROM [dbo].[ecommerce_customer_data_large]
GROUP BY FORMAT([Purchase_Date], 'yyyy-MM')
ORDER BY TotalAmount DESC;

--4. Payment Method Preferences
SELECT [Payment_Method], COUNT(*) as PaymentCount
FROM [dbo].[ecommerce_customer_data_large]
GROUP BY [Payment_Method]
ORDER BY PaymentCount DESC;

--5. Return Rates
SELECT [Returns], COUNT(*) as ReturnCount
FROM [dbo].[ecommerce_customer_data_large]
GROUP BY [Returns];

--6. Customer Loyalty
SELECT [Customer_ID], COUNT(*) as PurchaseCount
FROM [dbo].[ecommerce_customer_data_large]
GROUP BY [Customer_ID]
HAVING COUNT(*) > 1;

--7. Average Purchase Value
SELECT AVG([Total_Purchase_Amount]) as AvgPurchaseAmount
FROM [dbo].[ecommerce_customer_data_large];

--8. Product Pricing and Quantity
SELECT [Product_Price], [Quantity], COUNT(*) as PurchaseCount
FROM [dbo].[ecommerce_customer_data_large]
GROUP BY [Product_Price], [Quantity];

--9. Payment Method and Returns
SELECT [Payment_Method], [Returns], COUNT(*) as TransactionCount
FROM [dbo].[ecommerce_customer_data_large]
GROUP BY [Payment_Method], [Returns];

--10. Age and Purchase Patterns
SELECT [Age], [Product_Category], COUNT(*) as PurchaseCount
FROM [dbo].[ecommerce_customer_data_large]
GROUP BY [Age], [Product_Category]
ORDER BY [Age], PurchaseCount DESC;
