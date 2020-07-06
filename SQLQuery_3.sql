--All Rows, All Columns
SELECT
*
FROM Person.Person

-- "SELECT" selects data out of the table
--  * returns all columns
-- WHERE filters the results

SELECT
    FirstName,
    LastName
FROM Person.Person

-- Just with LastName - Adams
SELECT
    FirstName,
    LastName
FROM PERSON.PERSON
WHERE LastName = 'Adams'

-- Just with LastName - Adams in Descending order
SELECT
    FirstName,
    LastName
FROM PERSON.PERSON
WHERE LastName = 'Adams'
ORDER BY FirstName DESC -- ASC (default) or DESC

--Get the number of records in the entire table
SELECT
    COUNT(*)
From Person.Person

--Get the number of records with the last name of Adams
SELECT
    COUNT(*) AS AdamsCount
FROM Person.Person
WHERE LastName = 'Adams'

--We can also show alias love
SELECT
    COUNT(*) AS AdamsCount
FROM Person.Person AS P
WHERE P.LastName = 'Adams'

--Gets the SUM of the list price of all finished goods
SELECT
    SUM(ListPrice) AS SumOfListPrice
FROM Production.Product
WHERE FinishedGoodsFlag = 1

--Gets the AVERAGE of the list price of all finished goods
SELECT
    AVG(ListPrice) AS AverageOfListPrice
FROM Production.Product
WHERE FinishedGoodsFlag = 1

--Gets the MAX of the list price of all finished goods
SELECT
    MAX(ListPrice) AS MaxOfListPrice
FROM Production.Product
WHERE FinishedGoodsFlag = 1

--Gets the MIN of the list price of all finished goods
SELECT
    MIN(ListPrice) AS MinOfListPrice
FROM Production.Product
WHERE FinishedGoodsFlag = 1

--We can also show a combination
SELECT
    MIN(ListPrice) AS MinOfListPrice,
    MAX(ListPrice) AS MaxOfListPrice,
    AVG(ListPrice) AS AverageOfListPrice
FROM Production.Product
WHERE FinishedGoodsFlag = 1

--JOINING TWO TABLES
SELECT
    P.Name,
    PI.Shelf,
    PI.Bin,
    PI.Quantity
FROM Production.ProductInventory AS PI
INNER JOIN Production.Product AS P
    ON P.ProductID = PI.ProductID
WHERE PI.Shelf = 'B'

--VIEW ALL PRODUCTS THAT HAVE A REVIEW
SELECT
    P.Name,
    PR.ReviewerName,
    PR.ReviewDate,
    PR.Comments
FROM Production.Product AS P
JOIN Production.ProductReview AS PR
    ON PR.ProductID = P.ProductID

--LEFT JOIN
SELECT
    P.Name,
    PR.ReviewerName,
    PR.ReviewDate,
    PR.Comments
FROM Production.Product AS P
LEFT JOIN Production.ProductReview AS PR
    ON PR.ProductID = P.ProductID

--CROSS JOIN
SELECT
    P.Name,
    PR.ReviewerName,
    PR.ReviewDate,
    PR.Comments
FROM Production.Product AS P
CROSS JOIN Production.ProductReview AS PR

--Comparison Operators
SELECT
    P.Name,
    P.ListPrice
FROM Production.Product AS P
WHERE P.ListPrice > 1000

--Search by items that start with the letter 'R'. % is the wildcard character in SQL
SELECT
    P.Name,
    P.ListPrice
FROM Production.Product AS P
WHERE P.Name LIKE 'R%'

--You don't use = when comparing against null
--You use Is (=) or IS NOT (!=)