-- INSERT data in a TABLE
INSERT INTO employees
		(emp_id, emp_name, emp_email, emp_dept, emp_addr, emp_mob)
        VALUES
			('emp-1', 'Sujay Prasad', 'sujay@gmail.com', 'dept-3', 'abc, xyz. pin-690535', '9401734319'),
            ('emp-2', 'Lijo Benny Samuel', 'lijo@gmail.com', 'dept-4', 'odlc, xwz. pin-690522', '7845349090'),
            ('emp-3', 'Amal A', 'amal@gmail.com', 'dept-1', 'lbc, eyz. pin-690539', '9075328941'),
            ('emp-4', 'Hari Shankar', 'hari@gmail.com', 'dept-5', 'qwl, bgs. pin-690432', '8954210530'),
            ('emp-5', 'Ashik S', 'ashik@gmail.com', 'dept-2', 'jtl, dea. pin-690712', '9519052947');
            
SELECT * FROM employees;