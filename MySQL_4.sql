#1. Write a query to calculate the total sales (Quantity * UnitPrice) for each product.
select ProductID, SUM(quantity*UnitPrice) as total_sales from Sales group by
ProductID;

#2. Write a query to find the total number of products sold in each region.
select region,sum(Quantity) as ProductsSold from Sales group by region;

#3. Write a query to get the average sales amount per product.
select ProductID, avg(quantity*UnitPrice) as AverageSale from Sales GROUP BY
ProductID;

#4. Find the regions where total sales are more than 3000.
select region, sum(quantity*UnitPrice) as total_sales from Sales group by region
having total_sales>3000;

#5. Write a query to get the maximum quantity sold for each product.
select ProductID, max(quantity) as maxquantity from Sales group by ProductID;

#6. Write a query to calculate the average quantity of products sold per region.
select Region, avg(quantity) as avgQuantity from Sales group by Region;

#7. Find the product IDs that have generated a total sales amount of more than 1000.
select ProductID, sum(Quantity*UnitPrice) as TotalSales from Sales group by
ProductID having TotalSales>1000;

#8. Write a query to get the total number of sales (rows) made for each customer.
select CustomerID, count(Quantity) as SalesRows from Sales group by
CustomerID;

#9. Find the products for which the average quantity sold is less than 5.
select ProductID, avg(Quantity) as avgQuantity from Sales group by ProductID
having avgQuantity<5;

#10. Write a query to find the sum of total sales for each customer in each region.
select CustomerID, Region, Quantity*UnitPrice as TotalSale from Sales;

#11. Write a query to calculate the total sales for each month.
select month(SaleDate) as SaleMonth, sum(Quantity*UnitPrice) as TotalSale
from Sales GROUP BY SaleMonth;

#12. Find the regions where the average unit price is more than 200.
select Region, avg(UnitPrice) as avgUnitPrice from Sales group by Region having
avgUnitPrice>200;

#13. Write a query to get the minimum and maximum quantity sold per region.
select Region, max(Quantity) as maxQuantity, min(Quantity) as minQuantity
from Sales group by Region;

#14. Find the customers who have made more than 2 purchases.
select CustomerId, count(SaleID) as Purchases from Sales group by CustomerID
having Purchases>2;

#15. Write a query to find the total sales for each product and filter only those products where the total sales exceed 1500.
select ProductID Sum(Quantity*UnitPrice) as TotalSale from Sales group by
ProductID having TotalSale>1500;