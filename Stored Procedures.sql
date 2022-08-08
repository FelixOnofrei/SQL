/* A stored procedure is a prepared SQL Query that can be executed over and over again. 
We use a stored procedure if we continuously have to execute a query. We save it as a stored procedure and we can use it very quickly.*/




SHOW DATABASES;

SHOW TABLES FROM john;

USE john;

SHOW TABLES;

SELECT * FROM products 
WHERE price > 5
AND food IN ('food','bio');

# To call a stored procedure, we use CALL function
CALL get_product_data(3.4, @out_records);

SELECT @out_records AS value_counts;

SELECT * FROM student;

#Now we will create a procedure that counts the adults and minors in sudent table
# we will name it

CALL get_age_status(@minor,@adult);

SELECT @minor AS Minor_Count, @adult AS Adult_Count; #Nice
