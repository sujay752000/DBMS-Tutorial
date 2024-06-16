-- To show total users inside the mysql server
SELECT USER, HOST FROM mysql.user;


-- USER CREATION
-- CREATING a ROOT/SUPER USER and GRANTING ALL PRIVILEGES and also providing WITH GRANT OPTION
/*
	A root/super user have the total control over the mysql server and its databases over a particular HOST
*/

CREATE USER 'employee_admin'@'localhost' IDENTIFIED BY 'admin@123';
/*
	here USER is 'employee_admin'@'localhost'
		USER NAME is 'employee_admin',
        HOST is 'localhost'
    password is 'admin@123'
*/

GRANT ALL PRIVILEGES ON *.* TO 'employee_admin'@'localhost' WITH GRANT OPTION;
/*
	here ALL PRIVILEGES are granted
    *.* means
		* = means all DATABASES
        . = means pointing all respective DATABASES
        * = means all TABLES in each DATABASES
	WITH GRANT OPTION helps to provide GRANTING PRIVILEGES to other users
*/



-- CREATING a normal user and providing PRIVILEGES to a particular DATABASE and its TABLES
CREATE USER 'hr_dept_admin'@'localhost' IDENTIFIED BY 'hr@123';

-- GRANTING ALL PRIVILEGES on mysql_tut DATABASE and all its TABLES for 'hr_dept_admin'@'localhost'
GRANT ALL PRIVILEGES ON mysql_tut.* TO 'hr_dept_admin'@'localhost' WITH GRANT OPTION;
/*
	here 'hr_dept_admin'@'localhost' can access only mysql_tut DATABASE and its TABLES
*/



-- CREATING a normal user and providing some PRIVILEGES on a specific DATABASE and a particular respective TABLE inside
CREATE USER 'hr_dept_intern'@'localhost' IDENTIFIED BY 'hr_intern@123';

-- GRANTING some specific PRIVILEGES TO 'hr_dept_intern'@'localhost' ON mysql_tut DATABASE
GRANT SELECT, INSERT ON mysql_tut.employees TO 'hr_dept_intern'@'localhost';

/*
	here 'hr_dept_intern'@'localhost' can access only employees TABLE inside mysql_tut DATABASE
    and PRIVILEGES given are only SELECT and INSERT
*/



-- TO view all the PRIVILEGES of a particular USER
SHOW GRANTS FOR 'hr_dept_intern'@'localhost';