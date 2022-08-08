CREATE DEFINER=`felix`@`%` PROCEDURE `get_age_status`(out minor int, out adult int)
BEGIN

SELECT COUNT(*) INTO minor
FROM student
WHERE student.age < 18;

SELECT COUNT(*) INTO adult
FROM student
WHERE student.age >= 18;

END