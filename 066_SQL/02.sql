`
Assignment 2: LEFT JOIN Practice

Using the same Employees and Departments tables, answer the following:
Tasks:
Write a query using LEFT JOIN to display all employees and their department names, including employees with no department.
Modify the query to count how many employees are without a department.
`







mysql> SELECT e.emp_name, d.dept_name FROM employees AS e LEFT JOIN departments AS d ON e.dept_id = d.dept_id;

-- +----------+-----------+
-- | emp_name | dept_name |
-- +----------+-----------+
-- | Alice    | HR        |
-- | Bob      | IT        |
-- | Charlie  | Finance   |
-- | David    | HR        |
-- +----------+-----------+
-- 4 rows in set (0.00 sec)



mysql> SELECT COUNT(*) FROM employees AS e LEFT JOIN departments AS d ON e.dept_id = d.dept
_id WHERE e.dept_id IS NULL;

-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        0 |
-- +----------+
-- 1 row in set (0.00 sec)