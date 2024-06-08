USE mysql_tut;

-- To RENAME a TABLE
ALTER TABLE employee RENAME TO employees;
    
-- To RENAME a COLUMN in TABLE
ALTER TABLE employees
	RENAME COLUMN emp_role TO emp_dept,
    RENAME COLUMN emp_ids TO emp_id,
    RENAME COLUMN emp_names TO emp_name;


-- TO MODIFY a COLUMN in TABLE
ALTER TABLE employees
	MODIFY COLUMN emp_desig VARCHAR(200) NOT NULL,
    MODIFY COLUMN emp_dept VARCHAR(100) NOT NULL;
    

-- To ADD COLUMNS in a TABLE
-- AFTER existing_col - for adding a new column after another existing column
-- FIRST - to add column at the beginning of table
-- defaulty it add column at the end
ALTER TABLE employees
	ADD COLUMN emp_email VARCHAR(500) NOT NULL AFTER emp_name,
    ADD COLUMN emp_mob VARCHAR(250);


-- To ADD CONSTRIANT in a TABLE
ALTER TABLE employees
	ADD CONSTRAINT unique_prop UNIQUE(emp_email);
    

-- To DROP CONSTRAINT in a TABLE
ALTER TABLE employees
	DROP CONSTRAINT unique_prop;
    
	
 -- To DROP a COLUMN in TABLE
ALTER TABLE employees
	DROP COLUMN emp_role;
    