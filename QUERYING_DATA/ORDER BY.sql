-- ORDER BY : TO order selected data in ascending or descending manner
SELECT
	marks_holder as Roll_no,
    marks_10th as Marks_10th
FROM
	eligibility_marks
ORDER BY
	marks_10th DESC;