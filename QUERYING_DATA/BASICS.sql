-- DISTINCT : TO select the distinct data values
SELECT DISTINCT
	addr_house_city as CITY
FROM
	address;
    
    
    
-- LIMIT : To limit the retriving or selecting data view
SELECT
	stu_roll, stu_name
FROM
	student
LIMIT 6;



-- WHERE clause : To apply a certain condition
SELECT
	*
FROM
	student
WHERE
	stu_course = 'MCA';



-- OPERATORS
-- IN operator : to find a value in a given list
SELECT 
	addr_holder
FROM
	address
WHERE
	addr_house_city IN ('kollam', 'alappuzha');



-- LIKE operator : to find a string pattern
/*
	% = represents many charcters
    _ = represents single character
*/
SELECT
	*
FROM
	address
WHERE
	addr_house_city lIKE 'k%_m';



-- BETWEEN operator
SELECT
	*
FROM
	eligibility_marks
WHERE
	marks_10th BETWEEN 60 AND 100;
    
    
    
-- IS NULL / IS NOT NULL
-- IS NULL
SELECT
	stu_name,
    stu_roll
FROM
	student
WHERE
	stu_course IS NULL;

-- IS NOT NULL
SELECT
	stu_name,
    stu_roll
FROM
	student
WHERE
	stu_course IS NOT NULL;



/*
GENERAL ORDER of MYSQL QUERY

SELCECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY

*/