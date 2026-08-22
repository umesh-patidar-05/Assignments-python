`
# Assignment 3 — Employee Management System

*Use the employees table and sample data given below.*

## Table Structure

Create an employees table with the following columns:

* employee_id
* employee_name
* department
* city
* salary
* joining_date
* experience
* age
* gender
* employment_type
* skills
* email
* manager_id

### Data Type Requirements

Use:

* ENUM for gender
* ENUM for employment_type
* SET for skills
* DATE for joining_date
* DATE for any other date column if required
* Allow appropriate columns such as email and manager_id to contain NULL

Insert *at least 10 employees* with different values.

Your data must include:

* At least SOME different departments
* At least SOME different cities
* Some employees with NULL email
* Some employees with NULL manager_id
* Different employment types such as FULL_TIME, PART_TIME, CONTRACT, INTERN
* Different combinations of skills using SET
* Employees who joined before 2022
* Employees who joined between 2022 and 2024
* Employees who joined after 2024
* Different salary ranges
* Different experience levels
* Both male and female employees

---

## Write SQL queries for the following questions:

Find employees from IT, Finance, or HR who joined after '2023-01-01', have salary between ₹40,000 and ₹90,000, and have experience greater than 3 years.
Find employees whose email is NULL, salary is greater than ₹50,000, and joining date is after '2022-01-01'.
Find employees whose manager_id is NOT NULL, department is not HR, and salary is either below ₹40,000 or above ₹80,000.
Find employees from Indore, Pune, or Delhi who joined between '2022-01-01' and '2025-12-31', have salary greater than ₹45,000, and experience of at least 3 years.
Find employees who are FULL_TIME, have JAVA or PYTHON in their skills, salary greater than ₹50,000, and email is NOT NULL.
Find employees whose name starts with A or S, joining date is after '2023-01-01', salary is between ₹30,000 and ₹80,000, and age is between 25 and 35.
Find employees who belong to IT or Finance, have JAVA in skills, experience greater than 4 years, and salary is NOT between ₹50,000 and ₹80,000.
Find employees whose department is IT, HR, or Marketing, city is not Mumbai, salary is greater than ₹40,000, and either email is NULL or manager_id is NULL.
Find employees who joined after '2022-01-01', are not INTERN, have salary greater than ₹45,000, and have either SQL or PYTHON in their skills.
Find employees whose salary is greater than ₹60,000 OR experience is greater than 7 years, but exclude employees from Mumbai and Bhopal.
Find employees who joined between '2023-01-01' and '2026-12-31', belong to Electronics-related departments? Instead, use: departments IT or Development, salary greater than ₹50,000, and email is NOT NULL.
Find employees whose name contains the letter a, department is not HR, salary is between ₹35,000 and ₹75,000, and joining date is after '2022-06-01'.
Find employees who have both JAVA and SQL skills, salary greater than ₹55,000, experience greater than 3 years, and manager_id is NOT NULL.
Find employees who have PYTHON or REACT skills, belong to IT or Development, joined after '2023-01-01', and salary is greater than ₹50,000.
Find employees whose employment type is CONTRACT or PART_TIME, salary is greater than ₹35,000, joining date is between '2022-01-01' and '2025-12-31', and email is NOT NULL.
Find employees whose gender is FEMALE, department is IT or Finance, salary is greater than ₹45,000, and experience is greater than 2 years.
Find employees whose city is Indore, Pune, or Delhi, department is not HR, joining date is after '2023-01-01', salary is between ₹40,000 and ₹1,00,000, and manager_id is NOT NULL.
Find employees whose salary is NOT between ₹30,000 and ₹60,000, experience is greater than 5 years, and either department is IT or Finance.
Find employees whose email is NULL OR manager_id is NULL, but salary must be greater than ₹40,000 and joining date must be after '2022-01-01'.
Find employees whose name starts with S OR contains a, department is IT or Finance, salary is between ₹40,000 and ₹90,000, and experience is at least 3 years.
Find employees who joined between '2022-01-01' and '2025-12-31', are not from Mumbai or Bhopal, salary is greater than ₹50,000, and have JAVA in their skills.
Find employees who are FULL_TIME, joined after '2023-01-01', have salary greater than ₹60,000, and have either JAVA + SQL or PYTHON + REACT skills.
Find employees from IT, Finance, or Development whose salary is between ₹45,000 and ₹90,000, experience is greater than 3 years, email is NOT NULL, and manager_id is NOT NULL.
Find employees whose joining date is after '2023-01-01', department is not HR, salary is greater than ₹50,000 OR experience is greater than 6 years, and city is not Mumbai.
Find employees whose name starts with A or M, gender is FEMALE, employment type is FULL_TIME, salary is greater than ₹45,000, and email is NOT NULL.
Find employees who have JAVA or SPRING in their skills, joined after '2022-01-01', salary is NOT between ₹40,000 and ₹70,000, and manager_id is NOT NULL.
Find employees from Indore, Pune, or Delhi whose joining date is between '2023-01-01' and '2026-12-31', salary is between ₹40,000 and ₹1,00,000, experience is greater than 2 years, and either email or manager_id is NULL.
Find employees belonging to IT or Development, whose name contains a, skills contain JAVA or PYTHON, salary is greater than ₹50,000, joining date is after '2023-01-01', and email is NOT NULL.
Find employees whose department is IT, Finance, or Development, city is not Mumbai or Bhopal, salary is between ₹40,000 and ₹90,000, experience is greater than 3 years, skills contain SQL, and manager_id is NOT NULL. Display the result ordered by salary in descending order.
Find employees whose name starts with S OR contains a, department is IT or Finance, joining date is between '2023-01-01' and '2026-12-31', salary is between ₹40,000 and ₹1,00,000, experience is greater than 2 years, email is NOT NULL, manager_id is NOT NULL, skills contain JAVA or PYTHON, and city is Indore, Pune, or Delhi. Display the result first by department ascending and then by salary descending.
`














mysql> USE assignments

-- Database changed





mysql> SHOW TABLES;

-- +-----------------------+
-- | Tables_in_assignments |
-- +-----------------------+
-- | employees             |
-- +-----------------------+
-- 1 row in set (0.03 sec)






mysql> CREATE TABLE employees01 (employee_id INT PRIMARY KEY AUTO_INCREMENT, employee_name VARCHAR(50), department VARCHAR(50), city VARCHAR(40), salary DECIMAL(10,2), joining_date DATE, experience TINYINT UNSIGNED, age INT UNSIGNED, gender ENUM('Male', 'Female'), employment_type ENUM('FULL_TIME', 'PART_TIME', 'CONTRACT', 'INTERN'), skills SET('JAVA', 'PYTHON', 'SQL', 'REACT', 'SPRING'), email VARCHAR(100), manager_id INT);

-- Query OK, 0 rows affected (0.17 sec)






mysql> DESC employees01;

-- +-----------------+---------------------------------------------------+------+-----+---------+----------------+
-- | Field           | Type                                              | Null | Key | Default | Extra          |
-- +-----------------+---------------------------------------------------+------+-----+---------+----------------+
-- | employee_id     | int                                               | NO   | PRI | NULL    | auto_increment |
-- | employee_name   | varchar(50)                                       | YES  |     | NULL    |                |
-- | department      | varchar(50)                                       | YES  |     | NULL    |                |
-- | city            | varchar(40)                                       | YES  |     | NULL    |                |
-- | salary          | decimal(10,2)                                     | YES  |     | NULL    |                |
-- | joining_date    | date                                              | YES  |     | NULL    |                |
-- | experience      | tinyint unsigned                                  | YES  |     | NULL    |                |
-- | age             | int unsigned                                      | YES  |     | NULL    |                |
-- | gender          | enum('Male','Female')                             | YES  |     | NULL    |                |
-- | employment_type | enum('FULL_TIME','PART_TIME','CONTRACT','INTERN') | YES  |     | NULL    |                |
-- | skills          | set('JAVA','PYTHON','SQL','REACT','SPRING')       | YES  |     | NULL    |                |
-- | email           | varchar(100)                                      | YES  |     | NULL    |                |
-- | manager_id      | int                                               | YES  |     | NULL    |                |
-- +-----------------+---------------------------------------------------+------+-----+---------+----------------+
-- 13 rows in set (0.02 sec)






mysql> INSERT INTO employees01 (employee_name, department, city, salary, joining_date, experience, age, gender, employment_type, skills, email, manager_id) VALUES
    -> ('Amit Sharma', 'IT', 'Indore', 65000.00, '2021-06-15', 5, 29, 'Male', 'FULL_TIME', 'JAVA,SQL', 'amit@gmail.com', NULL),
    -> ('Sneha Patel', 'Finance', 'Pune', 72000.00, '2023-03-20', 3, 27, 'Female', 'FULL_TIME', 'PYTHON,SQL', NULL, 1),
    -> ('Rahul Verma', 'Development', 'Delhi', 85000.00, '2024-07-10', 4, 31, 'Male', 'CONTRACT', 'JAVA,SPRING,SQL', 'rahul@gmail.com', 1),
    -> ('Anjali Mehta', 'HR', 'Mumbai', 48000.00, '2022-02-05', 4, 28, 'Female', 'FULL_TIME', 'PYTHON', 'anjali@gmail.com', NULL),
    -> ('Suresh Yadav', 'IT', 'Bhopal', 38000.00, '2020-11-12', 6, 34, 'Male', 'PART_TIME', 'JAVA,REACT', NULL, 1),
    -> ('Priya Singh', 'Development', 'Indore', 95000.00, '2025-04-18', 2, 26, 'Female', 'FULL_TIME', 'PYTHON,REACT', 'priya@gmail.com', 3),
    -> ('Aman Khan', 'Finance', 'Delhi', 55000.00, '2023-09-25', 3, 30, 'Male', 'CONTRACT', 'SQL,PYTHON', 'aman@gmail.com', NULL),
    -> ('Simran Joshi', 'Marketing', 'Pune', 42000.00, '2021-12-10', 7, 35, 'Female', 'INTERN', 'REACT', NULL, 4),
    -> ('Arjun Rao', 'IT', 'Delhi', 78000.00, '2026-01-15', 1, 25, 'Male', 'FULL_TIME', 'JAVA,SPRING', 'arjun@gmail.com', 1),
    -> ('Sakshi Jain', 'Finance', 'Indore', 90000.00, '2024-05-30', 4, 32, 'Female', 'PART_TIME', 'JAVA,PYTHON,SQL', NULL, 2);

-- Query OK, 10 rows affected (0.02 sec)
-- Records: 10  Duplicates: 0  Warnings: 0






mysql> SELECT * FROM employees01;

-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+------------------+------------+
-- | employee_id | employee_name | department  | city   | salary   | joining_date | experience | age  | gender | employment_type | skills          | email            | manager_id |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+------------------+------------+
-- |           1 | Amit Sharma   | IT          | Indore | 65000.00 | 2021-06-15   |          5 |   29 | Male   | FULL_TIME       | JAVA,SQL        | amit@gmail.com   |       NULL |
-- |           2 | Sneha Patel   | Finance     | Pune   | 72000.00 | 2023-03-20   |          3 |   27 | Female | FULL_TIME       | PYTHON,SQL      | NULL             |          1 |
-- |           3 | Rahul Verma   | Development | Delhi  | 85000.00 | 2024-07-10   |          4 |   31 | Male   | CONTRACT        | JAVA,SQL,SPRING | rahul@gmail.com  |          1 |
-- |           4 | Anjali Mehta  | HR          | Mumbai | 48000.00 | 2022-02-05   |          4 |   28 | Female | FULL_TIME       | PYTHON          | anjali@gmail.com |       NULL |
-- |           5 | Suresh Yadav  | IT          | Bhopal | 38000.00 | 2020-11-12   |          6 |   34 | Male   | PART_TIME       | JAVA,REACT      | NULL             |          1 |
-- |           6 | Priya Singh   | Development | Indore | 95000.00 | 2025-04-18   |          2 |   26 | Female | FULL_TIME       | PYTHON,REACT    | priya@gmail.com  |          3 |
-- |           7 | Aman Khan     | Finance     | Delhi  | 55000.00 | 2023-09-25   |          3 |   30 | Male   | CONTRACT        | PYTHON,SQL      | aman@gmail.com   |       NULL |
-- |           8 | Simran Joshi  | Marketing   | Pune   | 42000.00 | 2021-12-10   |          7 |   35 | Female | INTERN          | REACT           | NULL             |          4 |
-- |           9 | Arjun Rao     | IT          | Delhi  | 78000.00 | 2026-01-15   |          1 |   25 | Male   | FULL_TIME       | JAVA,SPRING     | arjun@gmail.com  |          1 |
-- |          10 | Sakshi Jain   | Finance     | Indore | 90000.00 | 2024-05-30   |          4 |   32 | Female | PART_TIME       | JAVA,PYTHON,SQL | NULL             |          2 |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+------------------+------------+
-- 10 rows in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE department IN ('IT', 'Finance', 'HR') AND joining_date > '2023-01-01' AND salary BETWEEN 40000 AND 90000 AND experience > 3;

-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-------+------------+
-- | employee_id | employee_name | department | city   | salary   | joining_date | experience | age  | gender | employment_type | skills          | email | manager_id |
-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-------+------------+
-- |          10 | Sakshi Jain   | Finance    | Indore | 90000.00 | 2024-05-30   |          4 |   32 | Female | PART_TIME       | JAVA,PYTHON,SQL | NULL  |          2 |
-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-------+------------+
-- 1 row in set (0.01 sec)






mysql> SELECT * FROM employees01 WHERE email IS NULL AND salary > 50000 AND joining_date > '2022-01-01';

-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-------+------------+
-- | employee_id | employee_name | department | city   | salary   | joining_date | experience | age  | gender | employment_type | skills          | email | manager_id |
-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-------+------------+
-- |           2 | Sneha Patel   | Finance    | Pune   | 72000.00 | 2023-03-20   |          3 |   27 | Female | FULL_TIME       | PYTHON,SQL      | NULL  |          1 |
-- |          10 | Sakshi Jain   | Finance    | Indore | 90000.00 | 2024-05-30   |          4 |   32 | Female | PART_TIME       | JAVA,PYTHON,SQL | NULL  |          2 |
-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-------+------------+
-- 2 rows in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE manager_id IS NOT NULL AND department != 'HR' AND (salary < 40000 OR salary > 80000);

-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- | employee_id | employee_name | department  | city   | salary   | joining_date | experience | age  | gender | employment_type | skills          | email           | manager_id |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- |           3 | Rahul Verma   | Development | Delhi  | 85000.00 | 2024-07-10   |          4 |   31 | Male   | CONTRACT        | JAVA,SQL,SPRING | rahul@gmail.com |          1 |
-- |           5 | Suresh Yadav  | IT          | Bhopal | 38000.00 | 2020-11-12   |          6 |   34 | Male   | PART_TIME       | JAVA,REACT      | NULL            |          1 |
-- |           6 | Priya Singh   | Development | Indore | 95000.00 | 2025-04-18   |          2 |   26 | Female | FULL_TIME       | PYTHON,REACT    | priya@gmail.com |          3 |
-- |          10 | Sakshi Jain   | Finance     | Indore | 90000.00 | 2024-05-30   |          4 |   32 | Female | PART_TIME       | JAVA,PYTHON,SQL | NULL            |          2 |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- 4 rows in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE city IN ('Indore', 'Pune', 'Delhi') AND joining_date BETWEEN '2022-01-01' AND '2025-12-31' AND salary > 45000 AND experience >= 3;

-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- | employee_id | employee_name | department  | city   | salary   | joining_date | experience | age  | gender | employment_type | skills          | email           | manager_id |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- |           2 | Sneha Patel   | Finance     | Pune   | 72000.00 | 2023-03-20   |          3 |   27 | Female | FULL_TIME       | PYTHON,SQL      | NULL            |          1 |
-- |           3 | Rahul Verma   | Development | Delhi  | 85000.00 | 2024-07-10   |          4 |   31 | Male   | CONTRACT        | JAVA,SQL,SPRING | rahul@gmail.com |          1 |
-- |           7 | Aman Khan     | Finance     | Delhi  | 55000.00 | 2023-09-25   |          3 |   30 | Male   | CONTRACT        | PYTHON,SQL      | aman@gmail.com  |       NULL |
-- |          10 | Sakshi Jain   | Finance     | Indore | 90000.00 | 2024-05-30   |          4 |   32 | Female | PART_TIME       | JAVA,PYTHON,SQL | NULL            |          2 |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- 4 rows in set (0.00 sec)








mysql> SELECT * FROM employees01 WHERE employment_type = 'FULL_TIME' AND (FIND_IN_SET ('JAVA', skills) OR FIND_IN_SET ('PYTHON', skills)) AND salary > 50000 AND email IS NOT NULL;

-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+--------------+-----------------+------------+
-- | employee_id | employee_name | department  | city   | salary   | joining_date | experience | age  | gender | employment_type | skills       | email           | manager_id |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+--------------+-----------------+------------+
-- |           1 | Amit Sharma   | IT          | Indore | 65000.00 | 2021-06-15   |          5 |   29 | Male   | FULL_TIME       | JAVA,SQL     | amit@gmail.com  |       NULL |
-- |           6 | Priya Singh   | Development | Indore | 95000.00 | 2025-04-18   |          2 |   26 | Female | FULL_TIME       | PYTHON,REACT | priya@gmail.com |          3 |
-- |           9 | Arjun Rao     | IT          | Delhi  | 78000.00 | 2026-01-15   |          1 |   25 | Male   | FULL_TIME       | JAVA,SPRING  | arjun@gmail.com |          1 |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+--------------+-----------------+------------+
-- 3 rows in set (0.00 sec)







mysql> SELECT * FROM employees01 WHERE (employee_name LIKE 'A%' OR employee_name LIKE 'S%')  AND joining_date > '2023-01-01' AND salary BETWEEN 30000 AND 80000 AND age BETWEEN 25 AND 35;

-- +-------------+---------------+------------+-------+----------+--------------+------------+------+--------+-----------------+-------------+-----------------+------------+
-- | employee_id | employee_name | department | city  | salary   | joining_date | experience | age  | gender | employment_type | skills      | email           | manager_id |
-- +-------------+---------------+------------+-------+----------+--------------+------------+------+--------+-----------------+-------------+-----------------+------------+
-- |           2 | Sneha Patel   | Finance    | Pune  | 72000.00 | 2023-03-20   |          3 |   27 | Female | FULL_TIME       | PYTHON,SQL  | NULL            |          1 |
-- |           7 | Aman Khan     | Finance    | Delhi | 55000.00 | 2023-09-25   |          3 |   30 | Male   | CONTRACT        | PYTHON,SQL  | aman@gmail.com  |       NULL |
-- |           9 | Arjun Rao     | IT         | Delhi | 78000.00 | 2026-01-15   |          1 |   25 | Male   | FULL_TIME       | JAVA,SPRING | arjun@gmail.com |          1 |
-- +-------------+---------------+------------+-------+----------+--------------+------------+------+--------+-----------------+-------------+-----------------+------------+
-- 3 rows in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE department IN ('IT', 'Finance') AND FIND_IN_SET('JAVA', skills) AND experience > 4 AND (salary NOT BETWEEN 50000 AND 80000);

-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+------------+-------+------------+
-- | employee_id | employee_name | department | city   | salary   | joining_date | experience | age  | gender | employment_type | skills     | email | manager_id |
-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+------------+-------+------------+
-- |           5 | Suresh Yadav  | IT         | Bhopal | 38000.00 | 2020-11-12   |          6 |   34 | Male   | PART_TIME       | JAVA,REACT | NULL  |          1 |
-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+------------+-------+------------+
-- 1 row in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE department IN ('IT', 'HR', 'Marketing') AND city != 'Mumbai' AND salary > 40000 AND (email IS NULL OR manager_id IS NULL);

-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+----------+----------------+------------+
-- | employee_id | employee_name | department | city   | salary   | joining_date | experience | age  | gender | employment_type | skills   | email          | manager_id |
-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+----------+----------------+------------+
-- |           1 | Amit Sharma   | IT         | Indore | 65000.00 | 2021-06-15   |          5 |   29 | Male   | FULL_TIME       | JAVA,SQL | amit@gmail.com |       NULL |
-- |           8 | Simran Joshi  | Marketing  | Pune   | 42000.00 | 2021-12-10   |          7 |   35 | Female | INTERN          | REACT    | NULL           |          4 |
-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+----------+----------------+------------+
-- 2 rows in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE joining_date > '2022-01-01' AND employment_type != 'INTERN' AND salary > 45000 AND (FIND_IN_SET('SQL', skills) OR FIND_IN_SET('PYTHON', skills));

-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+------------------+------------+
-- | employee_id | employee_name | department  | city   | salary   | joining_date | experience | age  | gender | employment_type | skills          | email            | manager_id |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+------------------+------------+
-- |           2 | Sneha Patel   | Finance     | Pune   | 72000.00 | 2023-03-20   |          3 |   27 | Female | FULL_TIME       | PYTHON,SQL      | NULL             |          1 |
-- |           3 | Rahul Verma   | Development | Delhi  | 85000.00 | 2024-07-10   |          4 |   31 | Male   | CONTRACT        | JAVA,SQL,SPRING | rahul@gmail.com  |          1 |
-- |           4 | Anjali Mehta  | HR          | Mumbai | 48000.00 | 2022-02-05   |          4 |   28 | Female | FULL_TIME       | PYTHON          | anjali@gmail.com |       NULL |
-- |           6 | Priya Singh   | Development | Indore | 95000.00 | 2025-04-18   |          2 |   26 | Female | FULL_TIME       | PYTHON,REACT    | priya@gmail.com  |          3 |
-- |           7 | Aman Khan     | Finance     | Delhi  | 55000.00 | 2023-09-25   |          3 |   30 | Male   | CONTRACT        | PYTHON,SQL      | aman@gmail.com   |       NULL |
-- |          10 | Sakshi Jain   | Finance     | Indore | 90000.00 | 2024-05-30   |          4 |   32 | Female | PART_TIME       | JAVA,PYTHON,SQL | NULL             |          2 |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+------------------+------------+
-- 6 rows in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE (salary > 60000 OR experience > 7) AND city NOT IN ('Mumbai', 'Bhopal');

-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- | employee_id | employee_name | department  | city   | salary   | joining_date | experience | age  | gender | employment_type | skills          | email           | manager_id |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- |           1 | Amit Sharma   | IT          | Indore | 65000.00 | 2021-06-15   |          5 |   29 | Male   | FULL_TIME       | JAVA,SQL        | amit@gmail.com  |       NULL |
-- |           2 | Sneha Patel   | Finance     | Pune   | 72000.00 | 2023-03-20   |          3 |   27 | Female | FULL_TIME       | PYTHON,SQL      | NULL            |          1 |
-- |           3 | Rahul Verma   | Development | Delhi  | 85000.00 | 2024-07-10   |          4 |   31 | Male   | CONTRACT        | JAVA,SQL,SPRING | rahul@gmail.com |          1 |
-- |           6 | Priya Singh   | Development | Indore | 95000.00 | 2025-04-18   |          2 |   26 | Female | FULL_TIME       | PYTHON,REACT    | priya@gmail.com |          3 |
-- |           9 | Arjun Rao     | IT          | Delhi  | 78000.00 | 2026-01-15   |          1 |   25 | Male   | FULL_TIME       | JAVA,SPRING     | arjun@gmail.com |          1 |
-- |          10 | Sakshi Jain   | Finance     | Indore | 90000.00 | 2024-05-30   |          4 |   32 | Female | PART_TIME       | JAVA,PYTHON,SQL | NULL            |          2 |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- 6 rows in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE joining_date BETWEEN '2023-01-01' AND '2026-12-31' AND department IN ('IT', 'Development') AND salary > 50000 AND email IS NOT NULL;

-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- | employee_id | employee_name | department  | city   | salary   | joining_date | experience | age  | gender | employment_type | skills          | email           | manager_id |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- |           3 | Rahul Verma   | Development | Delhi  | 85000.00 | 2024-07-10   |          4 |   31 | Male   | CONTRACT        | JAVA,SQL,SPRING | rahul@gmail.com |          1 |
-- |           6 | Priya Singh   | Development | Indore | 95000.00 | 2025-04-18   |          2 |   26 | Female | FULL_TIME       | PYTHON,REACT    | priya@gmail.com |          3 |
-- |           9 | Arjun Rao     | IT          | Delhi  | 78000.00 | 2026-01-15   |          1 |   25 | Male   | FULL_TIME       | JAVA,SPRING     | arjun@gmail.com |          1 |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- 3 rows in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE employee_name LIKE '%a%' AND department != 'HR' AND salary BETWEEN 35000 AND 75000 AND joining_date > '2022-06-01';

-- +-------------+---------------+------------+-------+----------+--------------+------------+------+--------+-----------------+------------+----------------+------------+
-- | employee_id | employee_name | department | city  | salary   | joining_date | experience | age  | gender | employment_type | skills     | email          | manager_id |
-- +-------------+---------------+------------+-------+----------+--------------+------------+------+--------+-----------------+------------+----------------+------------+
-- |           2 | Sneha Patel   | Finance    | Pune  | 72000.00 | 2023-03-20   |          3 |   27 | Female | FULL_TIME       | PYTHON,SQL | NULL           |          1 |
-- |           7 | Aman Khan     | Finance    | Delhi | 55000.00 | 2023-09-25   |          3 |   30 | Male   | CONTRACT        | PYTHON,SQL | aman@gmail.com |       NULL |
-- +-------------+---------------+------------+-------+----------+--------------+------------+------+--------+-----------------+------------+----------------+------------+
-- 2 rows in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE FIND_IN_SET('Java', skills) AND FIND_IN_SET('SQL', skills) AND salary > 55000 AND experience > 3 AND manager_id IS NOT NULL;

-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- | employee_id | employee_name | department  | city   | salary   | joining_date | experience | age  | gender | employment_type | skills          | email           | manager_id |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- |           3 | Rahul Verma   | Development | Delhi  | 85000.00 | 2024-07-10   |          4 |   31 | Male   | CONTRACT        | JAVA,SQL,SPRING | rahul@gmail.com |          1 |
-- |          10 | Sakshi Jain   | Finance     | Indore | 90000.00 | 2024-05-30   |          4 |   32 | Female | PART_TIME       | JAVA,PYTHON,SQL | NULL            |          2 |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- 2 rows in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE (FIND_IN_SET('PYTHON', skills) OR FIND_IN_SET('REACT', skills)) AND department IN ('IT', 'Development') AND joining_date > '2023-01-01' AND salary > 50000;

-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+--------------+-----------------+------------+
-- | employee_id | employee_name | department  | city   | salary   | joining_date | experience | age  | gender | employment_type | skills       | email           | manager_id |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+--------------+-----------------+------------+
-- |           6 | Priya Singh   | Development | Indore | 95000.00 | 2025-04-18   |          2 |   26 | Female | FULL_TIME       | PYTHON,REACT | priya@gmail.com |          3 |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+--------------+-----------------+------------+
-- 1 row in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE employment_type IN ('CONTRACT', 'PART_TIME') AND salary > 35000 AND joining_date BETWEEN '2022-01-01' AND '2025-12-31' AND email IS NOT NULL;

-- +-------------+---------------+-------------+-------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- | employee_id | employee_name | department  | city  | salary   | joining_date | experience | age  | gender | employment_type | skills          | email           | manager_id |
-- +-------------+---------------+-------------+-------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- |           3 | Rahul Verma   | Development | Delhi | 85000.00 | 2024-07-10   |          4 |   31 | Male   | CONTRACT        | JAVA,SQL,SPRING | rahul@gmail.com |          1 |
-- |           7 | Aman Khan     | Finance     | Delhi | 55000.00 | 2023-09-25   |          3 |   30 | Male   | CONTRACT        | PYTHON,SQL      | aman@gmail.com  |       NULL |
-- +-------------+---------------+-------------+-------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- 2 rows in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE gender = 'Female' AND department IN ('IT', 'Finance') AND salary > 45000 AND experience > 2;

-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-------+------------+
-- | employee_id | employee_name | department | city   | salary   | joining_date | experience | age  | gender | employment_type | skills          | email | manager_id |
-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-------+------------+
-- |           2 | Sneha Patel   | Finance    | Pune   | 72000.00 | 2023-03-20   |          3 |   27 | Female | FULL_TIME       | PYTHON,SQL      | NULL  |          1 |
-- |          10 | Sakshi Jain   | Finance    | Indore | 90000.00 | 2024-05-30   |          4 |   32 | Female | PART_TIME       | JAVA,PYTHON,SQL | NULL  |          2 |
-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-------+------------+
-- 2 rows in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE city IN ('Indore', 'Pune', 'Delhi') AND department != 'HR' AND joining_date > '2023-01-01' AND salary BETWEEN 40000 AND 100000 AND manager_id IS NOT NULL;

-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- | employee_id | employee_name | department  | city   | salary   | joining_date | experience | age  | gender | employment_type | skills          | email           | manager_id |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- |           2 | Sneha Patel   | Finance     | Pune   | 72000.00 | 2023-03-20   |          3 |   27 | Female | FULL_TIME       | PYTHON,SQL      | NULL            |          1 |
-- |           3 | Rahul Verma   | Development | Delhi  | 85000.00 | 2024-07-10   |          4 |   31 | Male   | CONTRACT        | JAVA,SQL,SPRING | rahul@gmail.com |          1 |
-- |           6 | Priya Singh   | Development | Indore | 95000.00 | 2025-04-18   |          2 |   26 | Female | FULL_TIME       | PYTHON,REACT    | priya@gmail.com |          3 |
-- |           9 | Arjun Rao     | IT          | Delhi  | 78000.00 | 2026-01-15   |          1 |   25 | Male   | FULL_TIME       | JAVA,SPRING     | arjun@gmail.com |          1 |
-- |          10 | Sakshi Jain   | Finance     | Indore | 90000.00 | 2024-05-30   |          4 |   32 | Female | PART_TIME       | JAVA,PYTHON,SQL | NULL            |          2 |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- 5 rows in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE (salary NOT BETWEEN 30000 AND 60000) AND experience > 5 AND department IN ('IT', 'Finance');

-- Empty set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE (email IS NULL OR manager_id IS NULL) AND salary > 40000 AND joining_date > '2022-01-01';

-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+------------------+------------+
-- | employee_id | employee_name | department | city   | salary   | joining_date | experience | age  | gender | employment_type | skills          | email            | manager_id |
-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+------------------+------------+
-- |           2 | Sneha Patel   | Finance    | Pune   | 72000.00 | 2023-03-20   |          3 |   27 | Female | FULL_TIME       | PYTHON,SQL      | NULL             |          1 |
-- |           4 | Anjali Mehta  | HR         | Mumbai | 48000.00 | 2022-02-05   |          4 |   28 | Female | FULL_TIME       | PYTHON          | anjali@gmail.com |       NULL |
-- |           7 | Aman Khan     | Finance    | Delhi  | 55000.00 | 2023-09-25   |          3 |   30 | Male   | CONTRACT        | PYTHON,SQL      | aman@gmail.com   |       NULL |
-- |          10 | Sakshi Jain   | Finance    | Indore | 90000.00 | 2024-05-30   |          4 |   32 | Female | PART_TIME       | JAVA,PYTHON,SQL | NULL             |          2 |
-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+------------------+------------+
-- 4 rows in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE (employee_name LIKE 'S%' OR employee_name LIKE '%a%') AND department IN ('IT', 'Finance') AND salary BETWEEN 40000 AND 90000 AND experience >= 3;

-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+----------------+------------+
-- | employee_id | employee_name | department | city   | salary   | joining_date | experience | age  | gender | employment_type | skills          | email          | manager_id |
-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+----------------+------------+
-- |           1 | Amit Sharma   | IT         | Indore | 65000.00 | 2021-06-15   |          5 |   29 | Male   | FULL_TIME       | JAVA,SQL        | amit@gmail.com |       NULL |
-- |           2 | Sneha Patel   | Finance    | Pune   | 72000.00 | 2023-03-20   |          3 |   27 | Female | FULL_TIME       | PYTHON,SQL      | NULL           |          1 |
-- |           7 | Aman Khan     | Finance    | Delhi  | 55000.00 | 2023-09-25   |          3 |   30 | Male   | CONTRACT        | PYTHON,SQL      | aman@gmail.com |       NULL |
-- |          10 | Sakshi Jain   | Finance    | Indore | 90000.00 | 2024-05-30   |          4 |   32 | Female | PART_TIME       | JAVA,PYTHON,SQL | NULL           |          2 |
-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+----------------+------------+
-- 4 rows in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE joining_date BETWEEN '2022-02-01' AND '2025-12-31' AND city NOT IN ('Mumbai', 'Bhopal') AND salary > 50000 AND FIND_IN_SET('JAVA', skills);

-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- | employee_id | employee_name | department  | city   | salary   | joining_date | experience | age  | gender | employment_type | skills          | email           | manager_id |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- |           3 | Rahul Verma   | Development | Delhi  | 85000.00 | 2024-07-10   |          4 |   31 | Male   | CONTRACT        | JAVA,SQL,SPRING | rahul@gmail.com |          1 |
-- |          10 | Sakshi Jain   | Finance     | Indore | 90000.00 | 2024-05-30   |          4 |   32 | Female | PART_TIME       | JAVA,PYTHON,SQL | NULL            |          2 |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- 2 rows in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE employment_type = 'FULL_TIME' AND joining_date > '2023-01-01' AND salary > 60000 AND ((FIND_IN_SET('JAVA', skills) AND FIND_IN_SET('SQL', skills)) OR (FIND_IN_SET('PYTHON', skills) AND FIND_IN_SET('REACT', skills)));

-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+--------------+-----------------+------------+
-- | employee_id | employee_name | department  | city   | salary   | joining_date | experience | age  | gender | employment_type | skills       | email           | manager_id |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+--------------+-----------------+------------+
-- |           6 | Priya Singh   | Development | Indore | 95000.00 | 2025-04-18   |          2 |   26 | Female | FULL_TIME       | PYTHON,REACT | priya@gmail.com |          3 |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+--------------+-----------------+------------+
-- 1 row in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE department  IN ('IT', 'Finance', 'Development') AND salary BETWEEN 45000 AND 90000 AND experience > 3 AND email IS NOT NULL AND manager_id IS NOT NULL;

-- +-------------+---------------+-------------+-------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- | employee_id | employee_name | department  | city  | salary   | joining_date | experience | age  | gender | employment_type | skills          | email           | manager_id |
-- +-------------+---------------+-------------+-------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- |           3 | Rahul Verma   | Development | Delhi | 85000.00 | 2024-07-10   |          4 |   31 | Male   | CONTRACT        | JAVA,SQL,SPRING | rahul@gmail.com |          1 |
-- +-------------+---------------+-------------+-------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- 1 row in set (0.01 sec)






mysql> SELECT * FROM employees01 WHERE joining_date > '2023-01-01' AND department != 'HR' AND (salary > 50000 OR experience > 6) AND city != 'Mumbai';

-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- | employee_id | employee_name | department  | city   | salary   | joining_date | experience | age  | gender | employment_type | skills          | email           | manager_id |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- |           2 | Sneha Patel   | Finance     | Pune   | 72000.00 | 2023-03-20   |          3 |   27 | Female | FULL_TIME       | PYTHON,SQL      | NULL            |          1 |
-- |           3 | Rahul Verma   | Development | Delhi  | 85000.00 | 2024-07-10   |          4 |   31 | Male   | CONTRACT        | JAVA,SQL,SPRING | rahul@gmail.com |          1 |
-- |           6 | Priya Singh   | Development | Indore | 95000.00 | 2025-04-18   |          2 |   26 | Female | FULL_TIME       | PYTHON,REACT    | priya@gmail.com |          3 |
-- |           7 | Aman Khan     | Finance     | Delhi  | 55000.00 | 2023-09-25   |          3 |   30 | Male   | CONTRACT        | PYTHON,SQL      | aman@gmail.com  |       NULL |
-- |           9 | Arjun Rao     | IT          | Delhi  | 78000.00 | 2026-01-15   |          1 |   25 | Male   | FULL_TIME       | JAVA,SPRING     | arjun@gmail.com |          1 |
-- |          10 | Sakshi Jain   | Finance     | Indore | 90000.00 | 2024-05-30   |          4 |   32 | Female | PART_TIME       | JAVA,PYTHON,SQL | NULL            |          2 |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- 6 rows in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE (employee_name LIKE 'A%' OR employee_name LIKE 'M%') AND gender = 'Female' AND employment_type = 'FULL_TIME' AND salary > 45000 AND email IS NOT NULL;

-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+--------+------------------+------------+
-- | employee_id | employee_name | department | city   | salary   | joining_date | experience | age  | gender | employment_type | skills | email            | manager_id |
-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+--------+------------------+------------+
-- |           4 | Anjali Mehta  | HR         | Mumbai | 48000.00 | 2022-02-05   |          4 |   28 | Female | FULL_TIME       | PYTHON | anjali@gmail.com |       NULL |
-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+--------+------------------+------------+
-- 1 row in set (0.00 sec)







mysql> SELECT * FROM employees01 WHERE (FIND_IN_SET('JAVA', skills) OR FIND_IN_SET('SPRING', skills)) AND joining_date > '2022-01-01' AND salary NOT BETWEEN 40000 AND 70000 AND manager_id IS NOT NULL;

-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- | employee_id | employee_name | department  | city   | salary   | joining_date | experience | age  | gender | employment_type | skills          | email           | manager_id |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- |           3 | Rahul Verma   | Development | Delhi  | 85000.00 | 2024-07-10   |          4 |   31 | Male   | CONTRACT        | JAVA,SQL,SPRING | rahul@gmail.com |          1 |
-- |           9 | Arjun Rao     | IT          | Delhi  | 78000.00 | 2026-01-15   |          1 |   25 | Male   | FULL_TIME       | JAVA,SPRING     | arjun@gmail.com |          1 |
-- |          10 | Sakshi Jain   | Finance     | Indore | 90000.00 | 2024-05-30   |          4 |   32 | Female | PART_TIME       | JAVA,PYTHON,SQL | NULL            |          2 |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- 3 rows in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE city IN ('Indore', 'Pune', 'Delhi') AND joining_date BETWEEN '2023-01-01' AND '2026-12-31' AND salary BETWEEN 40000 AND 100000 AND experience > 2 AND (email IS NULL OR manager_id IS NULL);

-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+----------------+------------+
-- | employee_id | employee_name | department | city   | salary   | joining_date | experience | age  | gender | employment_type | skills          | email          | manager_id |
-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+----------------+------------+
-- |           2 | Sneha Patel   | Finance    | Pune   | 72000.00 | 2023-03-20   |          3 |   27 | Female | FULL_TIME       | PYTHON,SQL      | NULL           |          1 |
-- |           7 | Aman Khan     | Finance    | Delhi  | 55000.00 | 2023-09-25   |          3 |   30 | Male   | CONTRACT        | PYTHON,SQL      | aman@gmail.com |       NULL |
-- |          10 | Sakshi Jain   | Finance    | Indore | 90000.00 | 2024-05-30   |          4 |   32 | Female | PART_TIME       | JAVA,PYTHON,SQL | NULL           |          2 |
-- +-------------+---------------+------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+----------------+------------+
-- 3 rows in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE department IN ('IT', 'Development') AND employee_name LIKE '%a%' AND ( FIND_IN_SET('JAVA', skills) OR FIND_IN_SET('PYTHON', skills)) AND salary > 50000 AND joining_date > '2023-01-01' AND email IS NOT NULL;

-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- | employee_id | employee_name | department  | city   | salary   | joining_date | experience | age  | gender | employment_type | skills          | email           | manager_id |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- |           3 | Rahul Verma   | Development | Delhi  | 85000.00 | 2024-07-10   |          4 |   31 | Male   | CONTRACT        | JAVA,SQL,SPRING | rahul@gmail.com |          1 |
-- |           6 | Priya Singh   | Development | Indore | 95000.00 | 2025-04-18   |          2 |   26 | Female | FULL_TIME       | PYTHON,REACT    | priya@gmail.com |          3 |
-- |           9 | Arjun Rao     | IT          | Delhi  | 78000.00 | 2026-01-15   |          1 |   25 | Male   | FULL_TIME       | JAVA,SPRING     | arjun@gmail.com |          1 |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- 3 rows in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE department IN ('IT', 'Finance', 'Development') AND city NOT IN ('Mumbai', 'Bhopal') AND salary BETWEEN 40000 AND 90000 AND experience > 3 AND FIND_IN_SET('SQL', skills) AND manager_id IS NOT NULL ORDER BY salary DESC;

-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- | employee_id | employee_name | department  | city   | salary   | joining_date | experience | age  | gender | employment_type | skills          | email           | manager_id |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- |          10 | Sakshi Jain   | Finance     | Indore | 90000.00 | 2024-05-30   |          4 |   32 | Female | PART_TIME       | JAVA,PYTHON,SQL | NULL            |          2 |
-- |           3 | Rahul Verma   | Development | Delhi  | 85000.00 | 2024-07-10   |          4 |   31 | Male   | CONTRACT        | JAVA,SQL,SPRING | rahul@gmail.com |          1 |
-- +-------------+---------------+-------------+--------+----------+--------------+------------+------+--------+-----------------+-----------------+-----------------+------------+
-- 2 rows in set (0.00 sec)






mysql> SELECT * FROM employees01 WHERE (employee_name LIKE 'S%' OR employee_name LIKE '%a') AND department IN ('IT', 'Finance') AND joining_date BETWEEN '2023-01-01' AND '2026-12-31' AND salary BETWEEN 40000 AND 100000 AND experience > 2 AND email IS NOT NULL AND manager_id IS NOT NULL AND (FIND_IN_SET('JAVA', skills) OR FIND_IN_SET('PYTHON', skills)) AND city IN ('Indore', 'Pune', 'Delhi') ORDER BY department, salary DESC;

-- Empty set (0.00 sec)
