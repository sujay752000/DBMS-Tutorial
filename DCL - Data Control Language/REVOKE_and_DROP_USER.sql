-- REVOKE ALL PRIVILEGES from USER
REVOKE ALL PRIVILEGES ON mysql_tut.* FROM 'hr_dept_admin'@'localhost';

-- REVOKE some specific PRIVILEGES from user
REVOKE INSERT ON mysql_tut.employees FROM 'hr_dept_intern'@'localhost';


-- DROP a USER from mysql server
DROP USER 'hr_dept_intern'@'localhost';