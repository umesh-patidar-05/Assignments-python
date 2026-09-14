`
Assignment 1:
 Understanding INNER JOIN
Problem Statement:
Consider the following tables:
Employees
emp_id emp_name dept_id
1 Alice 101
2 Bob 102
3 Charlie 103
4 David 101
Departments
dept_id  dept_name
101      HR
102     IT
104     Finance

Tasks:

Write a query to display employees and their corresponding department names using INNER JOIN.
Modify the query to display only employees who belong to the "HR" department.
`






mysql> CREATE TABLE employees( emp_id INT PRIMARY KEY, emp_name VARCHAR(20), dept_id INT);

-- Query OK, 0 rows affected (0.40 sec)



mysql> DESC employees;

-- +----------+-------------+------+-----+---------+-------+
-- | Field    | Type        | Null | Key | Default | Extra |
-- +----------+-------------+------+-----+---------+-------+
-- | emp_id   | int         | NO   | PRI | NULL    |       |
-- | emp_name | varchar(20) | YES  |     | NULL    |       |
-- | dept_id  | int         | YES  |     | NULL    |       |
-- +----------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.01 sec)



mysql> INSERT INTO employees VALUES(1, 'Alice', 101), (2, 'Bob', 102), (3, 'Charlie', 103),
 (4, 'David', 101);

-- Query OK, 4 rows affected (0.53 sec)
-- Records: 4  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM employees;

-- +--------+----------+---------+
-- | emp_id | emp_name | dept_id |
-- +--------+----------+---------+
-- |      1 | Alice    |     101 |
-- |      2 | Bob      |     102 |
-- |      3 | Charlie  |     103 |
-- |      4 | David    |     101 |
-- +--------+----------+---------+
-- 4 rows in set (0.00 sec)



mysql> CREATE TABLE departments( dept_id INT PRIMARY KEY, dept_name VARCHAR(20));

-- Query OK, 0 rows affected (1.61 sec)



mysql> DESC departments;

-- +-----------+-------------+------+-----+---------+-------+
-- | Field     | Type        | Null | Key | Default | Extra |
-- +-----------+-------------+------+-----+---------+-------+
-- | dept_id   | int         | NO   | PRI | NULL    |       |
-- | dept_name | varchar(20) | YES  |     | NULL    |       |
-- +-----------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.00 sec)



mysql> INSERT INTO departments VALUES( 101, 'HR'), (102, 'IT'), (103, 'Finance');

-- Query OK, 3 rows affected (0.06 sec)
-- Records: 3  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM departments;

-- +---------+-----------+
-- | dept_id | dept_name |
-- +---------+-----------+
-- |     101 | HR        |
-- |     102 | IT        |
-- |     103 | Finance   |
-- +---------+-----------+
-- 3 rows in set (0.00 sec)



mysql> SELECT e.emp_name, d.dept_name FROM employees AS e INNER JOIN departments AS d ON e.dept_id = d.dept_id;

-- +----------+-----------+
-- | emp_name | dept_name |
-- +----------+-----------+
-- | Alice    | HR        |
-- | Bob      | IT        |
-- | Charlie  | Finance   |
-- | David    | HR        |
-- +----------+-----------+
-- 4 rows in set (0.00 sec)



mysql> SELECT e.emp_name, d.dept_name FROM employees AS e INNER JOIN departments AS d ON e.dept_id = d.dept_id WHERE d.dept_name = 'HR';

-- +----------+-----------+
-- | emp_name | dept_name |
-- +----------+-----------+
-- | Alice    | HR        |
-- | David    | HR        |
-- +----------+-----------+
-- 2 rows in set (0.01 sec)
