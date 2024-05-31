Hi thomas, Bonface here. Here is today’s assignment: SELECT [CustomerID]
      ,[CompanyName]
      ,[ContactName]
      ,[ContactTitle]
      ,[Address]
      ,[City]
      ,[Region]
      ,[PostalCode]
      ,[Country]
      ,[Phone]
      ,[Fax]
  FROM [Northwind Traders].[dbo].[Customers]

  	
	
	SELECT count (Distinct CustomerID) as [Total Customers] --Checks the total number of customers and returns them as Total Customers
	FROM [Northwind Traders].[dbo].[Customers]


	  --Where Clause
	    SELECT 
		CustomerID
    
    FROM [Northwind Traders].[dbo].[Customers]
	Where CustomerID >80


	--Where , And Or conditions
	 SELECT *
    FROM [Northwind Traders].[dbo].[Customers]
	Where
	PostalCode > 12000
	 And Country = 'Germany' and City= 'Berlin'

	



	 SELECT *
     FROM [Northwind Traders].[dbo].[Customers]
	Where Country = 'Germany' or Country= 'Spain'