/* MySQL Indexes
CREATE INDEX statement in SQL is used to create indexes in tables.
The indexes are used to retrieve data from db more quickly (it is like the table of contents
from a book: you see the page at which to go to find what you need).
The user cannot see the indexes, and they are used to speed queries up.
IMPORTANT! Updating a table with indexes takes more time because of the need to also update the indexes.
Conclusion: Only create index on those columns that will be frequently searched against.*/

SHOW DATABASES;

SHOW TABLES FROM customer;
SHOW TABLES FROM john;
USE john;

SHOW TABLES;
SELECT * FROM products;

CREATE INDEX index_product_name
ON products(product_name);

DESC products;

SHOW TABLES;
SELECT * FROM student;

UPDATE student SET food='pasta' WHERE id=3;

CREATE INDEX index_name_food
ON student(first_name, food);

DESC student;

ALTER TABLE student
DROP INDEX index_product_name;