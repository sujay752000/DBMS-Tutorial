-- HAVING : Used to apply conditions on groups
/*
	mostly used along with GROUP BY
*/

SELECT addr_house_city, addr_house_pin, COUNT(addr_house_pin) as TOTAL_HOUSES
FROM address
GROUP BY addr_house_city, addr_house_pin
HAVING addr_house_pin > 690540;
