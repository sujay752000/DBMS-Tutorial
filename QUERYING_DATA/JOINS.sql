-- JOINS : Used to combine tables based on related column between them

-- INNER JOIN : Only common in between
SELECT stu_roll, stu_name, ent_score, ent_rank
FROM student AS S
INNER JOIN entrance AS E
ON S.stu_roll = E.ent_register_no;


-- LEFT JOIN : Left side and common in between
SELECT stu_roll, stu_name, ent_score, ent_rank
FROM student AS S
LEFT JOIN entrance AS E
ON S.stu_roll = E.ent_register_no;


-- RIGHT JOIN : Right side and common in between
SELECT stu_roll, stu_name, ent_score, ent_rank
FROM student AS S
RIGHT JOIN entrance AS E
ON S.stu_roll = E.ent_register_no;


-- FULL JOIN : Both side and common in between 
SELECT *
FROM student AS S
LEFT JOIN entrance AS E
ON S.stu_roll = E.ent_register_no

UNION

SELECT *
FROM student AS S
RIGHT JOIN entrance AS E
ON S.stu_roll = E.ent_register_no;


-- LEFT EXCLUSIVE JOIN - Left side without common in betwwen
SELECT *
FROM student AS S
LEFT JOIN entrance AS E
ON S.stu_roll = E.ent_register_no
WHERE E.ent_register_no IS NULL;


-- RIGHT EXCLUSIVE JOIN - Right side without common in betwwen
SELECT *
FROM student AS S
RIGHT JOIN entrance AS E
ON S.stu_roll = E.ent_register_no
WHERE S.stu_roll IS NULL;


-- OUTER EXCLUSIVE FULL JOIN - Both outer sides without common in betwwen
-- LEFT EXCLUSIVE + RIGHT ECLUSIVE
SELECT *
FROM student AS S
LEFT JOIN entrance AS E
ON S.stu_roll = E.ent_register_no
WHERE E.ent_register_no IS NULL

UNION

SELECT *
FROM student AS S
RIGHT JOIN entrance AS E
ON S.stu_roll = E.ent_register_no
WHERE S.stu_roll IS NULL;
