`
Assignment 1:

 Employee Salary Analysis
Use the following employees table to solve the questions below.

NOTE:-use your friends names in the given table.
Table: employees
id name department job_role salary hire_date
1 Alice HR       Manager       6000.00 2022-01-15
2 Bob HR Recruiter 4000.00 2023-03-20
3 Charlie IT Developer 5000.00 2022-07-25
4 David IT Developer 5500.00 2021-12-05
5 Eve IT Tester 4500.00 2023-06-10
6 Frank IT Tester 4800.00 2023-09-12
7 Grace Finance Analyst 5200.00 2021-11-18
8 Hank Finance Analyst 5300.00 2022-04-30
9 Ivy Finance Manager 7000.00 2023-08-14
10 Jack HR Recruiter 4200.00 2022-10-05
Questions
Find the total number of employees in each department.
Find the average salary of employees in each job role.
Find the highest salary in the IT department.
Find the lowest salary among all employees.
Count the number of employees who joined after January 1, 2023.
Find the total salary paid in each department.
Find the job role that has the highest total salary payout.
Find the average salary of employees who joined after 2022.
Find departments where the total salary exceeds 10,000.
Find the department with the highest number of employees.
`














mysql> CREATE TABLE employees( id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(30), department VARCHAR(30), job_role VARCHAR(30), salary DECIMAL(10,2), hire_date DATE);

-- Query OK, 0 rows affected (0.03 sec)




mysql> DESC employees;

-- +------------+---------------+------+-----+---------+----------------+
-- | Field      | Type          | Null | Key | Default | Extra          |
-- +------------+---------------+------+-----+---------+----------------+
-- | id         | int           | NO   | PRI | NULL    | auto_increment |
-- | name       | varchar(30)   | YES  |     | NULL    |                |
-- | department | varchar(30)   | YES  |     | NULL    |                |
-- | job_role   | varchar(30)   | YES  |     | NULL    |                |
-- | salary     | decimal(10,2) | YES  |     | NULL    |                |
-- | hire_date  | date          | YES  |     | NULL    |                |
-- +------------+---------------+------+-----+---------+----------------+
-- 6 rows in set (0.00 sec)




mysql> INSERT INTO employees( name, department, job_role, salary, hire_date)
    -> VALUES
    -> ('Alice', 'HR', 'Manager', 6000.00, '2022-01-15'),
    -> ('Bob', 'HR', 'Recruiter', 4000.00, '2023-03-20'),
    -> ('Charlie', 'IT', 'Developer', 5000.00, '2022-07-25'),
    -> ('David', 'IT', 'Developer', 5500.00, '2021-12-05'),
    -> ('Eve', 'IT', 'Tester', 4500.00, '2023-06-10'),
    -> ('Frank', 'IT', 'Tester', 4800.00, '2023-09-12'),
    -> ('Grace', 'Finance', 'Analyst', 5200.00, '2021-11-18'),
    -> ('Hank', 'Finance', 'Analyst', 5300.00, '2022-04-30'),
    -> ('Ivy', 'Finance', 'Manager', 7000.00, '2023-08-14'),
    -> ('Jack', 'HR', 'Recruiter', 4200.00, '2022-10-05');

-- Query OK, 10 rows affected (0.01 sec)
-- Records: 10  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM employees;

-- +----+---------+------------+-----------+---------+------------+
-- | id | name    | department | job_role  | salary  | hire_date  |
-- +----+---------+------------+-----------+---------+------------+
-- |  1 | Alice   | HR         | Manager   | 6000.00 | 2022-01-15 |
-- |  2 | Bob     | HR         | Recruiter | 4000.00 | 2023-03-20 |
-- |  3 | Charlie | IT         | Developer | 5000.00 | 2022-07-25 |
-- |  4 | David   | IT         | Developer | 5500.00 | 2021-12-05 |
-- |  5 | Eve     | IT         | Tester    | 4500.00 | 2023-06-10 |
-- |  6 | Frank   | IT         | Tester    | 4800.00 | 2023-09-12 |
-- |  7 | Grace   | Finance    | Analyst   | 5200.00 | 2021-11-18 |
-- |  8 | Hank    | Finance    | Analyst   | 5300.00 | 2022-04-30 |
-- |  9 | Ivy     | Finance    | Manager   | 7000.00 | 2023-08-14 |
-- | 10 | Jack    | HR         | Recruiter | 4200.00 | 2022-10-05 |
-- +----+---------+------------+-----------+---------+------------+
-- 10 rows in set (0.00 sec)








mysql> SELECT department, COUNT(*) FROM employees GROUP BY department;

-- +------------+----------+
-- | department | COUNT(*) |
-- +------------+----------+
-- | HR         |        3 |
-- | IT         |        4 |
-- | Finance    |        3 |
-- +------------+----------+
-- 3 rows in set (0.01 sec)




mysql> SELECT job_role, AVG(salary) FROM employees GROUP BY job_role;

-- +-----------+-------------+
-- | job_role  | AVG(salary) |
-- +-----------+-------------+
-- | Manager   | 6500.000000 |
-- | Recruiter | 4100.000000 |
-- | Developer | 5250.000000 |
-- | Tester    | 4650.000000 |
-- | Analyst   | 5250.000000 |
-- +-----------+-------------+
-- 5 rows in set (0.00 sec)




mysql> SELECT department, MAX(salary) FROM employees WHERE department = 'IT';

-- +------------+-------------+
-- | department | MAX(salary) |
-- +------------+-------------+
-- | IT         |     5500.00 |
-- +------------+-------------+
-- 1 row in set (0.01 sec)




mysql> SELECT MIN(salary) FROM employees;

-- +-------------+
-- | MIN(salary) |
-- +-------------+
-- |     4000.00 |
-- +-------------+
-- 1 row in set (0.00 sec)




mysql> SELECT COUNT(*) FROM employees WHERE hire_date > '2023-01-01';

-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        4 |
-- +----------+
-- 1 row in set (0.00 sec)




mysql> SELECT department, SUM(salary) FROM employees GROUP BY department;

-- +------------+-------------+
-- | department | SUM(salary) |
-- +------------+-------------+
-- | HR         |    14200.00 |
-- | IT         |    19800.00 |
-- | Finance    |    17500.00 |
-- +------------+-------------+
-- 3 rows in set (0.00 sec)




mysql> SELECT job_role, SUM(salary) FROM employees GROUP BY job_role ORDER BY SUM(salary) DESC LIMIT 1;

-- +----------+-------------+
-- | job_role | SUM(salary) |
-- +----------+-------------+
-- | Manager  |    13000.00 |
-- +----------+-------------+
-- 1 row in set (0.00 sec)




mysql> SELECT AVG(salary) FROM employees WHERE hire_date > '2022-12-31';

-- +-------------+
-- | AVG(salary) |
-- +-------------+
-- | 5075.000000 |
-- +-------------+
-- 1 row in set (0.00 sec)




mysql> SELECT department, SUM(salary) FROM employees GROUP BY department HAVING SUM(salary) > 10000;

-- +------------+-------------+
-- | department | SUM(salary) |
-- +------------+-------------+
-- | HR         |    14200.00 |
-- | IT         |    19800.00 |
-- | Finance    |    17500.00 |
-- +------------+-------------+
-- 3 rows in set (0.00 sec)




mysql> SELECT department, COUNT(*) FROM employees GROUP BY department ORDER BY COUNT(*) DESC LIMIT 1;

-- +------------+----------+
-- | department | COUNT(*) |
-- +------------+----------+
-- | IT         |        4 |
-- +------------+----------+
-- 1 row in set (0.00 sec)
