SELECT 
ProductID,
Name
FROM Production.Product

SELECT * FROM Purchasing.PurchaseOrderDetail
SELECT * FROM Purchasing.ProductVendor

SELECT DISTINCT RejectedQty
FROM Purchasing.PurchaseOrderDetail
ORDER BY RejectedQty DESC




SELECT * FROM Production.Product
SELECT * FROM Production.ProductCategory
SELECT * FROM Production.ProductSubcategory

SELECT DISTINCT Color
FROM Production.Product

SELECT 
Name, 
ProductID,
Color
FROM Production.Product

SELECT * FROM Production.Product
WHERE ProductID IN (415, 416, 420, 425)


--THIS IS AN EXAMPLE OF ALAIS
SELECT 
Product.NAME AS'Product Name',
Product.productID AS Product_productID,
Product.color AS [ProductColor]
FROM Production.Product


--THIS IS A COMMENT START AND END EXAMPLE
SELECT 
Product.NAME AS'Product Name',
/*Product.productID AS Product_productID,
*/Product.color AS [ProductColor]
FROM Production.Product




SELECT * FROM Production.Product
SELECT * FROM Production.ProductCategory
SELECT * FROM Production.ProductCostHistory

--EXAMPLES OF SORTING ORDER BY CLAUSES
SELECT ProductID,
       Name,
	   ProductNumber
FROM
Production.Product
ORDER BY Name



SELECT Name,
       ProductCategoryID,
	   rowguid
FROM 
Production.ProductCategory
ORDER BY ProductCategoryID 



SELECT ProductID,
       StandardCost,
	   StartDate
FROM
Production.ProductCostHistory
ORDER BY StandardCost DESC




SELECT * FROM Person.Person

SELECT TOP 40
      BusinessEntityID, FirstName, LastName
FROM Person.Person
ORDER BY FirstName DESC,
         LastName,
         BusinessEntityID DESC
                


SELECT * FROM Production.Product

SELECT ProductID,
       Name AS 'Product Name',
	   ListPrice
FROM Production.Product
WHERE ListPrice >= 400
ORDER BY ListPrice DESC



SELECT * FROM Production.Product
--WHERE CLAUSE LIKE % END, START AND BETWEEN

SELECT ProductID,
       Name AS 'Production Name',
	   ListPrice,
	   DaysToManufacture
FROM Production.Product
WHERE name LIKE 'Mountain%'
ORDER BY DaysToManufacture ASC


SELECT ProductID,
       Name AS 'Production Name',
	   ListPrice,
	   DaysToManufacture
FROM Production.Product
WHERE name LIKE '%Mountain'
--ORDER BY DaysToManufacture DESC




SELECT * FROM Production.Product

SELECT ProductID,
       Name AS 'Product Name',
	   ListPrice,
	   DaysToManufacture
FROM Production.Product
WHERE DaysToManufacture = 4
ORDER BY ListPrice ASC


SELECT ProductID,
       Name AS 'Product Name',
	   ListPrice,
	   DaysToManufacture
FROM Production.Product
WHERE DaysToManufacture IN (1, 2, 3, 4)
ORDER BY ListPrice ASC


SELECT ProductID,
       Name AS 'Product Name',
	   ListPrice,
	   DaysToManufacture
FROM Production.Product
WHERE ListPrice BETWEEN 200 AND 400
ORDER BY ListPrice ASC


SELECT ProductID,
       Name AS 'Product Name',
	   ListPrice,
	   DaysToManufacture
FROM Production.Product
WHERE Name = 'Fork Crown'
ORDER BY ListPrice ASC


SELECT ProductID,
       Name AS 'Product Name',
	   ListPrice,
	   DaysToManufacture
FROM Production.Product
WHERE Name LIKE 'Flat Washer%'
ORDER BY ListPrice ASC




SELECT * FROM Production.Product

SELECT DISTINCT
COLOR FROM Production.Product

SELECT 
      ProductID, 
	  Name, 
	  Color
FROM Production.Product
WHERE Name like 'Mountain%' AND Color = 'SILVER'

SELECT 
      ProductID, 
      Name, 
	  Color
FROM Production.Product
WHERE Name like '%Mountain%' OR Color  = 'BLUE'
ORDER BY Color DESC


         
SELECT 
       ProductID, 
	   Name, 
	   Color, 
	   SellStartDate
FROM Production.Product
WHERE SellStartDate > '2008-04-30 00:00:00'

SELECT 
       ProductID, 
	   Name, 
	   Color, 
	   SellStartDate
FROM Production.Product
WHERE SellStartDate BETWEEN '2008-04-30 00:00:00'AND '2011-05-31 00:00:00'


SELECT ProductID,
       Name, 
       Color, 
       SellStartDate,
YEAR (SellStartDate) AS ProductSellStartDate
FROM Production.Product
WHERE YEAR (SellStartDate) = 2011


SELECT ProductID,
       Name, 
       Color, 
       SellStartDate,
MONTH (SellStartDate) AS ProductSellStartDate
FROM Production.Product
WHERE MONTH (SellStartDate) = 4




SELECT * FROM 
Production.Product

SELECT ProductID,
       NAME,
       ListPrice,
	   StandardCost,
	   ListPrice - StandardCost AS 'Profit OR Loss'
FROM Production.Product
WHERE(ListPrice - StandardCost) = 0.00
ORDER BY ListPrice-StandardCost ASC 


SELECT * FROM 
Sales.SalesOrderDetail

SELECT SalesOrderID,
       CarrierTrackingNumber,
       OrderQTY, 
	   Unitprice,  
	   Linetotal,         
       OrderQty * UnitPrice AS 'TOTAL REVENUE',
	   Linetotal/unitprice AS 'SALES TAX'

FROM Sales.SalesOrderDetail





SELECT * FROM
Production.Product

SELECT ProductID,
       Name,
	   ListPrice,
CASE
      WHEN ListPrice >1000 THEN 'Product is expensive'
	  ELSE 'Product is okay to buy'
	  END as PriceCategory
FROM Production.Product



SELECT ProductID,
       Name,
	   ListPrice,
CASE
      WHEN ListPrice <100 THEN 'Product is cheap'
	  WHEN ListPrice <500 THEN 'Product is not very cheap'
	  WHEN ListPrice > 1000 THEN 'Product is expensive'
	  ELSE 'Product is okay to buy'
	  END as PriceCategory
FROM Production.Product








SELECT * FROM Production.Product
SELECT * FROM Production.ProductSubcategory
SELECT * FROM Production.ProductCategory


SELECT * FROM Production.Product
INNER JOIN
Production.ProductSubcategory
ON Product.ProductSubcategoryID = ProductSubcategory.ProductSubcategoryID



SELECT * FROM Production.Product
LEFT JOIN
Production.ProductSubcategory
ON Product.ProductSubcategoryID = ProductSubcategory.ProductSubcategoryID


SELECT * FROM Production.Product
RIGHT JOIN
Production.ProductSubcategory
ON Product.ProductSubcategoryID = ProductSubcategory.ProductSubcategoryID


SELECT * FROM Production.Product
FULL JOIN
Production.ProductSubcategory
ON Product.ProductSubcategoryID = ProductSubcategory.ProductSubcategoryID




SELECT
     Product.ProductID, Product.Name AS ProductName,
	 ProductSubcategory.Name AS subCategoryName
FROM Production.Product
INNER JOIN Production.ProductSubcategory
ON Product.ProductSubcategoryID = ProductSubcategory.ProductSubcategoryID


SELECT
     Product.ProductID, Product.Name AS ProductName,
	 ProductSubcategory.Name AS subCategoryName
FROM Production.Product
LEFT JOIN Production.ProductSubcategory
ON Product.ProductSubcategoryID = ProductSubcategory.ProductSubcategoryID


SELECT
     Product.ProductID, 
	 Product.Name AS ProductName,
	 ProductSubcategory.Name AS SubCategoryName
FROM Production.Product
RIGHT JOIN Production.ProductSubcategory
ON Product.ProductSubcategoryID = ProductSubcategory.ProductSubcategoryID


SELECT
     Product.ProductID, Product.Name AS ProductName,
	 ProductSubcategory.Name AS subCategoryName
FROM Production.Product
FULL JOIN Production.ProductSubcategory
ON Product.ProductSubcategoryID = ProductSubcategory.ProductSubcategoryID

---CODE FOR MULTI JOIN TABLE WITH ALAIS



SELECT * FROM Production.ProductCategory
SELECT * FROM Production.ProductSubcategory
SELECT * FROM Production.Product


SELECT
       Production.ProductCategory.Name AS ProductCategoryName,
       Production.ProductSubcategory.Name AS ProductSubcategoryName,
	   Production.Product.Name AS ProductName,
	   Production.Product.ProductID
FROM Production.ProductCategory
JOIN Production.ProductSubcategory
ON Production.ProductCategory.ProductCategoryID =ProductSubcategory.ProductCategoryID
JOIN Production.Product ON
Production.Product.ProductSubcategoryID = Production.ProductSubcategory.ProductSubcategoryID


SELECT
       Production.ProductCategory.Name AS ProductCategoryName,
       Production.ProductSubcategory.Name AS ProductSubcategoryName,
	   Production.Product.Name AS ProductName,
	   Production.Product.ProductID
FROM Production.ProductCategory
JOIN Production.ProductSubcategory
ON Production.ProductCategory.ProductCategoryID =ProductSubcategory.ProductCategoryID
JOIN Production.Product ON
Production.Product.ProductSubcategoryID = Production.ProductSubcategory.ProductSubcategoryID



SELECT AVG(ListPrice) AS AVERAGE
FROM Production.Product

SELECT ROUND (AVG(ListPrice),0) AS AVERAGE
FROM Production.Product


SELECT
GETDATE();


SELECT Name
FROM Production.Product

SELECT UPPER (Name)
FROM Production.Product


SELECT MIN(ListPrice)
FROM Production.Product

SELECT MAX(ListPrice)
FROM Production.Product

SELECT COUNT(ListPrice)
FROM Production.Product

SELECT SUM(ListPrice)
FROM Production.Product



SELECT MAX(ListPrice) AS 'MAXIMUM PRICE'
FROM Production.Product
WHERE ProductID=720


SELECT COUNT(*)
FROM Production.Product



SELECT UPPER (Name) AS UPPERCASE,
       LOWER (Name) as lowercase,
	   LEN (Name) AS LENGTH,
	   TRIM (Name) AS TRIMSPACES,
	   SellStartDate,
	   SellEndDate,
	   DATEDIFF(M, SellStartDate, SellEndDate) AS SALESINTERVAL

FROM Production.Product


SELECT UPPER (Name) AS UPPERCASE,
       LOWER (Name) as lowercase,
	   LEN (Name) AS LENGTH,
	   TRIM (Name) AS TRIMSPACES,
	   MONTH (SellStartDate) AS MONTH,
	   SellEndDate,
	   DATEDIFF(DAY, SellStartDate, SellEndDate) AS SALESINTERVAL

FROM Production.Product


SELECT 
      Name,
	  SUM(ListPrice)
FROM Production.Product
GROUP BY Name


SELECT DISTINCT
     Color,
	 SUM(ListPrice)
FROM Production.Product
GROUP BY COLOR


SELECT DISTINCT
     Color,
	 SUM(ListPrice)
FROM Production.Product
WHERE Color = 'BLUE'
GROUP BY COLOR


SELECT DISTINCT
     Color,
	 SUM(ListPrice) AS TOTALPRICE
FROM Production.Product
GROUP BY COLOR
ORDER BY TOTALPRICE DESC


SELECT DISTINCT
     Color,
	 SUM(ListPrice) AS TOTALPRICE
FROM Production.Product
WHERE COLOR IS NOT NULL
GROUP BY COLOR
ORDER BY TOTALPRICE DESC


SELECT DISTINCT
     Color,
	 AVG(LISTPRICE) AS 'AVERAGE LIST PRICE',
	 SUM(ListPrice) AS TOTALPRICE,
	 MAX(ListPrice) AS MAXIMUMPRICE,
	 MIN(ListPRICE) AS MINIMUMPRICE
FROM Production.Product
GROUP BY COLOR WITH ROLLUP
ORDER BY TOTALPRICE DESC


SELECT DISTINCT
     ISNULL(Color,'TOTAL'),
	 AVG(LISTPRICE) AS 'AVERAGE LIST PRICE',
	 SUM(ListPrice) AS TOTALPRICE,
	 MAX(ListPrice) AS MAXIMUMPRICE,
	 MIN(ListPRICE) AS MINIMUMPRICE
FROM Production.Product
GROUP BY COLOR WITH ROLLUP
--ORDER BY COLOR


SELECT DISTINCT Color,
     --ISNULL(Color,'TOTAL'),
	 AVG(LISTPRICE) AS 'AVERAGE LIST PRICE',
	 SUM(ListPrice) AS TOTALPRICE,
	 MAX(ListPrice) AS MAXIMUMPRICE,
	 MIN(ListPRICE) AS MINIMUMPRICE
	FROM Production.Product
WHERE COLOR IS NULL
GROUP BY COLOR
ORDER BY COLOR

SELECT DISTINCT
     Color,
	 SUM(ListPrice) AS TOTALPRICE
FROM Production.Product
GROUP BY COLOR
ORDER BY TOTALPRICE DESC



SELECT COLOR,
      SUM(ListPrice) AS TOTAL,
	  SUM(STANDARDCOST)AS TOTALCOST
FROM Production.Product
GROUP BY COLOR


