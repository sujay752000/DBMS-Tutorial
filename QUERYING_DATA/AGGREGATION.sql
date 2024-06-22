-- Aggregation Function
/*
	To return a aggregated value by apply functions,
    Only returns a single value
    
    Other functions are : 
	SUM(), MAX(), MIN(), AVG()
*/

SELECT
	COUNT(stu_roll) as TOTAL_STUDENTS
FROM
	student;
    
SELECT
	MAX(marks_10th) as HIGHEST_MARK_IN_10th
FROM
	eligibility_marks;
    
SELECT
	MIN(marks_12th) as LOWEST_MARK_IN_12th
FROM
	eligibility_marks;
    
SELECT
	AVG(marks_12th) as AVERAGE_MARK_IN_12th
FROM
	eligibility_marks;
