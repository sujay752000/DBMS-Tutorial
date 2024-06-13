-- SAVEPOINT - help to rollback to a savepoint

SELECT * FROM student;

START TRANSACTION;

	SAVEPOINT before_insert;
    INSERT INTO student
		(student_id, student_name, student_dept)
        VALUES
			('stu-4', 'Amal A', 'dept-2');

	SAVEPOINT before_update;
    UPDATE student
		SET
			student_name = 'Hari Shankar K S',
            student_dept = 'dept-5'
		WHERE
			student_id = 'stu-4';
            
	SAVEPOINT before_delete;
    DELETE FROM student
		WHERE student_id = 'stu-4';
        
	ROLLBACK TO before_update;
    
    COMMIT;