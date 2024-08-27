-- Identify the total number of invoices, 
SELECT Count( DISTINCT ordernumber)
FROM sales_data_sample
-- Total Number of Invoices = 307

-- Identify unique customer data 
Select Count (DISTINCT customername)
FROM sales_data_sample
-- Total number of unique Customers = 92 

-- Identify the product cateogry 
Select  productline
From sales_data_sample
Group by productline
-- Product Category = Classic Cars, Motor Cycles, Planes, Ships, Trains, Trucks & Buses, Vintage Cars 


-- Calculate basic summary statistics for key metrics like total sales amount, average order value, and most frequently purchased items.
--Calculate Total Sales 
SELECT Sum (sales)
FROM sales_data_sample
Total Sales = 10032628.85
-- Calculate average order value 
SELECT ordernumber,AVG(sales)
from sales_data_sample
group by 1
-- Most frequently purchased Item 
SELECT productline, sales
From sales_data_sample
group by 1
Order by 2 Desc 
-- Most purchased Items are classic cars 
 
 
--  Explore purchase patterns by country or any other relevant demographic information (if available). 
-- Explore purhcase patterns per country
SELECT Country, Sales
from sales_data_sample
group by 1
order by 2 DESC
-- Top Three countries based on their sales are Singapore, Canada and Italy 

-- Explore purhcase patterns per product
SELECT productline, Sales
from sales_data_sample
group by 1
order by 2 DESC
-- Top Three products purchased are Classic cars, Planes and Vintage Cars  

-- Explore purhcase patterns per Customers 
SELECT Customername, Sales
from sales_data_sample
group by 1
order by 2 DESC

-- Top Three Customers's purchases are Mini Gifts Distributors, Muscle Machine Inc and Dragons Souverniers 


