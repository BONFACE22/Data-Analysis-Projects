--QUESTION 1

 SELECT 
    a.FirstName,
    a.LastName,
    b.JobTitle,
    b.HireDate
FROM 
    [AdventureWorks2019].[HumanResources].[Employee] AS b
INNER JOIN 
    [AdventureWorks2019].[Person].[Person] AS a
ON 
    b.BusinessEntityID = a.BusinessEntityID
ORDER BY 
    b.HireDate desc;



--QUESTION 2

 
 
 -- Average ListPrice of products whose ProductID > 706
SELECT AVG(ListPrice) AS AverageListPrice
FROM [AdventureWorks2019].[Production].[Product]
WHERE ProductID > 706;

-- Minimum ListPrice of products whose ProductID > 706
SELECT MIN(ListPrice) AS MinimumListPrice
FROM [AdventureWorks2019].[Production].[Product]
WHERE ProductID > 706;

-- Maximum ListPrice of products whose ProductID > 706
SELECT MAX(ListPrice) AS MaximumListPrice
FROM [AdventureWorks2019].[Production].[Product]
WHERE ProductID > 706;

--OR--

--Average--Minimum--Maximum

SELECT AVG(ListPrice) AS AverageListPrice,
       MIN(ListPrice) AS MinimumListPrice,
       MAX(ListPrice) AS MaximumListPrice
FROM [AdventureWorks2019].[Production].[Product]
WHERE ProductID > 706;


--OR
-- Average ListPrice

SELECT AVG(ListPrice) AS AverageListPrice
FROM [AdventureWorks2019].[Production].[ProductListPriceHistory];

-- Minimum ListPrice

SELECT MIN(ListPrice) AS MinimumListPrice
FROM [AdventureWorks2019].[Production].[ProductListPriceHistory];

-- Maximum ListPrice

SELECT MAX(ListPrice) AS MaximumListPrice
FROM [AdventureWorks2019].[Production].[ProductListPriceHistory];


--OR--


--Average--Minimum--Maximum

SELECT AVG(ListPrice) AS AverageListPrice,
       MIN(ListPrice) AS MinimumListPrice,
       MAX(ListPrice) AS MaximumListPrice
FROM [AdventureWorks2019].[Production].[ProductListPriceHistory];



--QUESTION 3



SELECT 
      [FirstName]
      ,[LastName]
      ,[EmailAddress]
FROM [AdventureWorks2019].[Sales].[vIndividualCustomer]


--QUESTION 4


---List the products that have never been ordered--


-- For sales orders 

SELECT a.ProductID,
       a.Name
FROM [AdventureWorks2019].[Production].[Product] a
LEFT JOIN [AdventureWorks2019].[Sales].[SalesOrderDetail] b ON a.ProductID = b.ProductID
WHERE b.ProductID IS NULL
ORDER BY a.ProductID ASC;

--OR

--For work Orders
SELECT a.ProductID,
       a.Name
FROM [AdventureWorks2019].[Production].[Product] a
LEFT JOIN [AdventureWorks2019].[Production].[WorkOrder] b ON a.ProductID = b.ProductID
WHERE b.ProductID IS NULL
ORDER BY a.ProductID ASC;





--QUESTION 5--



  SELECT 
    FirstName + ' ' + LastName AS SalespersonName,
    SalesQuota
FROM 
    [AdventureWorks2019].[Sales].[vSalesPerson]
WHERE 
    SalesQuota > 100000;

  --OR
  
  SELECT 
    CONCAT(FirstName, ' ', LastName) AS SalespersonName,
    SalesQuota
FROM 
    [AdventureWorks2019].[Sales].[vSalesPerson]
WHERE 
    SalesQuota > 100000;