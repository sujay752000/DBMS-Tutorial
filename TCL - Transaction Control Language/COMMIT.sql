-- COMMIT used to make changes in DATABASE as permenent

/*
To understant TCL 
By default the AUTO-COMMIT is ON .. so we need to use
	SET AUTO-COMMIT = OFF;
    
    OR
    
	START TRANSACTION; = is used to start a transaction which consitutes of multiple operations
		Also AUTO-COMMIT is OFF in START TRANSACTION
*/

-- At initial commit state their is no data in student table

START TRANSACTION;  -- new TRANSACTION is started
    
INSERT INTO student  -- data is inserted
		(student_id, student_name, student_dept)
        VALUES
			('stu-1', 'Sujay Prasad', 'dept-3'),
			('stu-2', 'Lijo Benny', 'dept-1'),
			('stu-3', 'Hari Shankar', 'dept-4');
            

SELECT * FROM student; 

COMMIT;  -- To apply and save the changes permenent in DB

