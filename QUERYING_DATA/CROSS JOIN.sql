-- CROSS JOIN : returns the cartesian product of rows from tables
/*
	.It combines each row in the first table with all other rows in the second table
    .No condition is needed
*/
    
SELECT *
FROM cars
CROSS JOIN vehicles;