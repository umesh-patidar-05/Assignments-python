`
Assignment 3: RIGHT JOIN Practice
Problem Statement:
Consider the same tables.
Tasks:
Write a query using RIGHT JOIN to display all departments and their employees, including departments with no employees.
Find the names of departments that have no employees assigned.
`







mysql> SELECT e.emp_name, d.dept_name FROM employees AS e RIGHT JOIN departments AS d ON e.dept_id = d.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| David    | HR        |
| Alice    | HR        |
| Bob      | IT        |
| Charlie  | Finance   |
+----------+-----------+
4 rows in set (0.00 sec)




mysql> SELECT e.emp_name, d.dept_name FROM employees AS e RIGHT JOIN departments AS d ON e.dept_id = d.dept_id WHERE e.dept_id IS NULL;
Empty set (0.00 sec)
