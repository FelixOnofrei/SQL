/* This is a practice file using northwind database from 
https://w3resource.com/mysql-exercises/northwind/products-table-exercises/index.php */

use northwind;

SHOW tables;

SELECT * FROM products;

# 1. Write a query to get Product name and quantity/unit.
SELECT ProductName, QuantityPerUnit 
FROM products;

# 2. Write a query to get current Product list (Product ID and name).
SELECT ProductID, ProductName
FROM products
WHERE Discontinued = 0;

# 3. Write a query to get discontinued Product list (Product ID and name).
SELECT ProductID, ProductName 
FROM products
WHERE Discontinued = 1;

# 4. Write a query to get most expense and least expensive Product list (name and unit price).
SELECT ProductName, MIN(UnitPrice) AS Salary
FROM products
UNION
SELECT ProductName, MAX(UnitPrice)
FROM products;

# 5. Write a query to get Product list (id, name, unit price) where current products cost less than $20.
SELECT ProductID, ProductName, UnitPrice
FROM products
WHERE UnitPrice < 20;

# 6. Write a query to get Product list (id, name, unit price) where products cost between $15 and $25.
SELECT ProductID, ProductName, UnitPrice
FROM products
WHERE UnitPrice BETWEEN 15 AND 25;

# 7. Write a query to get Product list (name, unit price) of above average price. 
SELECT ProductName, UnitPrice 
FROM products
WHERE UnitPrice > (
	SELECT AVG(UnitPrice)
	FROM products
    );

# 8. Write a query to get Product list (name, unit price) of ten most expensive products.
SELECT ProductName, UnitPrice 
FROM products
ORDER BY UnitPrice DESC
LIMIT 10;

# 9. Write a query to count current and discontinued products.
SELECT COUNT(ProductName) AS Discontinued
FROM products
GROUP BY Discontinued;

		# lET'S SAY WE WANT TO RETURN THEM IN DIFFERENT COLUMNS, NOT ROWS.
SELECT
	(
		SELECT COUNT(ProductName)
		FROM products
		WHERE Discontinued =1
	) AS 'Discontinued',
	(
		SELECT COUNT(ProductName)
		FROM products
		WHERE Discontinued =0
	) AS 'Current';

# 10. Write a query to get Product list (name, units on order , units in stock)
#     of stock less than the quantity on order.
SELECT ProductName, UnitsOnOrder, UnitsInStock
FROM products
WHERE UnitsInStock < UnitsOnOrder;