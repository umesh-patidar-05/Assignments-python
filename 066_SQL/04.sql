`
Assignment 4: FULL OUTER JOIN Simulation
Problem Statement:
Since MySQL does not support FULL OUTER JOIN directly, use a combination of LEFT JOIN and RIGHT JOIN to display all employees and departments, ensuring that unmatched records are also included.
==============================================
`





mysql> SELECT e.emp_name, d.dept_name FROM employees AS e LEFT JOIN departments AS d ON e.dept_id = d.dept_id UNION SELECT e.emp_name, d.dept_name FROM employees AS e RIGHT JOIN departments AS d ON e.dept_id = d.dept_id;

-- +----------+-----------+
-- | emp_name | dept_name |
-- +----------+-----------+
-- | Alice    | HR        |
-- | Bob      | IT        |
-- | Charlie  | Finance   |
-- | David    | HR        |
-- +----------+-----------+
-- 4 rows in set (0.01 sec)