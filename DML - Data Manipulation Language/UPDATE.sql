-- UPDATE data in a TABLE
UPDATE employees
	SET
		emp_mob = '9633734319',
        emp_addr = 'Vyshnavam, Kandalloor SOUTH, Pin-690535',
        emp_email = 'sujay123@gmail.com'
	WHERE
		emp_name = 'Sujay Prasad';
    

SELECT * FROM employees;