-- GROUP BY : To group rows in a table based on a same values
/*
	Aggregate functions are mostly used along with the GROUP BY
*/
-- This will group by city
SELECT addr_house_city, COUNT(addr_holder)
FROM address
GROUP BY addr_house_city;


-- This also group by city and displays in ascending order of count
SELECT addr_house_city, COUNT(addr_holder) as TOTAL_STUDENTS
FROM address
GROUP BY addr_house_city
ORDER BY TOTAL_STUDENTS ASC;