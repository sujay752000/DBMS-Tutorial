-- to CREATE a DATABASE

CREATE DATABASE mysql_tut;

-- to USE a DATABASE 
USE mysql_tut;


-- to CREATE a TABLE
CREATE TABLE department(
	dept_id VARCHAR(50) PRIMARY KEY,
    dept_name VARCHAR(200) NOT NULL
);


-- to DESCRIBE the structure of TABLE
DESC department;


-- showing example of FOREIGN KEY relation
CREATE TABLE employee(
	emp_id VARCHAR(50) PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    emp_dept VARCHAR(50),
    emp_role VARCHAR(100),
    
    CONSTRAINT fk_employee FOREIGN KEY(emp_dept) REFERENCES department(dept_id)
		ON DELETE CASCADE ON UPDATE CASCADE
);

DESC employee;
