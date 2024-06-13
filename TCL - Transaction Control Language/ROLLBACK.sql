-- ROLLBACK : to roll back to previous commited phase / stable phase

/*
At initial the table has tuple record for 'stu-3'
*/

START TRANSACTION;

-- deleting record of 'stu-3'
DELETE FROM student
	WHERE student_id = 'stu-3';

-- ROLLBACK to the previous commit, which where the 'stu-3' was present
ROLLBACK;
