USE company;

CREATE TABLE Sales (
    SaleID INT,
    SaleDate DATE,
    CustomerID INT,
    ProductID INT,
    Amount DECIMAL(10, 2)
);

INSERT INTO Sales (SaleID, SaleDate, CustomerID, ProductID, Amount) VALUES
(1, '2024-01-01', 101, 1001, 150.00),
(2, '2024-01-02', 102, 1002, 200.00),
(3, '2024-01-03', 101, 1001, 100.00),
(4, '2024-01-04', 103, 1003, 300.00),
(5, '2024-01-05', 102, 1002, 250.00),
(6, '2024-01-06', 101, 1001, 175.00),
(7, '2024-01-07', 104, 1004, 400.00),
(8, '2024-01-08', 105, 1005, 350.00),
(9, '2024-01-09', 102, 1002, 225.00),
(10, '2024-01-10', 101, 1001, 125.00);

select * from Sales;

SELECT 
    SaleID, 
    SaleDate, 
    Amount,
    SUM(Amount) OVER (ORDER BY SaleDate) AS RunningTotal
FROM Sales;

SELECT 
    SaleID, 
    SaleDate, 
    Amount,
    AVG(Amount) OVER (ORDER BY SaleDate ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS AvgLast3Sales
FROM Sales;

SELECT 
    SaleID, 
    SaleDate, 
    CustomerID, 
    Amount,
    RANK() OVER (PARTITION BY CustomerID ORDER BY Amount DESC) AS RankByAmount
FROM Sales;

SELECT 
    SaleID, 
    SaleDate, 
    Amount,
    CUME_DIST() OVER (ORDER BY Amount) AS CumulativeDistribution
FROM Sales;

SELECT 
    SaleID, 
    SaleDate, 
    Amount,
    Amount - LAG(Amount, 1) OVER (ORDER BY SaleDate) AS AmountDifference
FROM Sales;

SELECT 
    SaleID, 
    SaleDate, 
    Amount,
    LEAD(Amount, 1) OVER (ORDER BY SaleDate) AS NextSaleAmount
FROM Sales;

SELECT 
    SaleID, 
    SaleDate, 
    CustomerID, 
    Amount,
    FIRST_VALUE(Amount) OVER (PARTITION BY CustomerID ORDER BY SaleDate) AS FirstSaleAmount
FROM Sales;

SELECT 
    SaleID, 
    SaleDate, 
    Amount,
    Amount * 100.0 / SUM(Amount) OVER () AS PercentageOfTotal
FROM Sales;

SELECT 
    SaleID, 
    SaleDate, 
    CustomerID, 
    Amount,
    SUM(Amount) OVER (PARTITION BY CustomerID ORDER BY SaleDate) AS CustomerRunningTotal
FROM Sales;

SELECT 
    SaleID, 
    SaleDate, 
    ProductID, 
    Amount,
    LAST_VALUE(Amount) OVER (PARTITION BY ProductID ORDER BY SaleDate ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LatestSaleAmount
FROM Sales;





