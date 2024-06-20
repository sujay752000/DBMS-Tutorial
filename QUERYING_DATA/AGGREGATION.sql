-- Aggregation Function
/*
	To return a aggregated value by apply functions,
    Only returns a single value
*/
SELECT
	COUNT(stu_roll) as TOTAL_STUDENTS
FROM
	student;
    
/*
Other functions are : 
	SUM(), MAX(), MIN(), AVG()
*/