-- SELF JOIN
/*
	Used to join the respective table and itself based on a related column
    it helps to display the hierarchy of data
    
    eg,
		consider a employee table which describes the employee details
        which also consits of manager column : which describes about the manager, who is
        managing the respective employees
*/
SELECT *
FROM employees AS E1
JOIN employees AS E2
ON E1.emp_id = E2.emp_manager;
    
-- Selecting needed columns

SELECT E2.emp_id, E2.emp_name, E1.emp_name AS Manager_Name
FROM employees AS E1
JOIN employees AS E2
ON E1.emp_id = E2.emp_manager;
