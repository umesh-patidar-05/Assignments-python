
`
3.
NOTE:USE TABLE from QNO 1:Table: employees

Find the total number of employees in each department and display only those departments having more than 2 employees. (GROUP BY + HAVING)
Find the total salary paid in each department and display the results in descending order of total salary. (GROUP BY + ORDER BY)
Find the job role that has the highest total salary payout, displaying only roles where total salary is above 10,000. (GROUP BY + HAVING + ORDER BY)
Find the average salary of employees who joined after 2022, displaying only job roles where the average salary is above 4500. (WHERE + GROUP BY + HAVING)
Find departments where the total salary exceeds 10,000 and order the results in ascending order of department name. (GROUP BY + HAVING + ORDER BY)
`










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








mysql> SELECT department, COUNT(*) FROM employees GROUP BY department HAVING COUNT(*) > 2;

-- +------------+----------+
-- | department | COUNT(*) |
-- +------------+----------+
-- | HR         |        3 |
-- | IT         |        4 |
-- | Finance    |        3 |
-- +------------+----------+
-- 3 rows in set (0.00 sec)




mysql> SELECT department, SUM(salary) FROM employees GROUP BY department ORDER BY SUM(salary) DESC;

-- +------------+-------------+
-- | department | SUM(salary) |
-- +------------+-------------+
-- | IT         |    19800.00 |
-- | Finance    |    17500.00 |
-- | HR         |    14200.00 |
-- +------------+-------------+
-- 3 rows in set (0.00 sec)




mysql> SELECT job_role, SUM(salary) FROM employees GROUP BY job_role HAVING SUM(salary) > 10000 ORDER BY SUM(salary) DESC LIMIT 1;

-- +----------+-------------+
-- | job_role | SUM(salary) |
-- +----------+-------------+
-- | Manager  |    13000.00 |
-- +----------+-------------+
-- 1 row in set (0.00 sec)




mysql> SELECT job_role, AVG(salary) FROM employees WHERE hire_date > '2022-12-31' GROUP BY job_role HAVING AVG(salary) > 4500;

-- +----------+-------------+
-- | job_role | AVG(salary) |
-- +----------+-------------+
-- | Tester   | 4650.000000 |
-- | Manager  | 7000.000000 |
-- +----------+-------------+
-- 2 rows in set (0.00 sec)




mysql> SELECT department, SUM(salary) FROM employees GROUP BY department HAVING SUM(salary) > 10000 ORDER BY SUM(salary);

-- +------------+-------------+
-- | department | SUM(salary) |
-- +------------+-------------+
-- | HR         |    14200.00 |
-- | Finance    |    17500.00 |
-- | IT         |    19800.00 |
-- +------------+-------------+
-- 3 rows in set (0.00 sec)
