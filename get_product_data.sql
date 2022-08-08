CREATE DEFINER=`felix`@`%` PROCEDURE `get_product_data`(in prc float, out out_records INT)
BEGIN
SELECT COUNT(*) INTO out_records FROM products
WHERE products.price > prc
AND products.food IN (
	SELECT DISTINCT food FROM student);
END