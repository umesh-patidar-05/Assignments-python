`
Assignment 1— Employee Management System


You are developing an Employee Management System for a company.

Create an employees table with the following information:

Employee ID
Employee Name
Department
City
Salary
Experience in years
Age
Joining Date
Sample Data

Insert at least 15 employees with different values.

Your data must include:

At least 4 different departments — IT, HR, Finance, Sales
At least 5 different cities — Indore, Bhopal, Pune, Mumbai, Bangalore
Salaries ranging from ₹30,000 to ₹1,00,000
Experience ranging from 1 to 10 years
Age ranging from 22 to 40 years
Joining dates from 2020 to 2026
Some employees should have the same department
Some employees should have the same city
Some employees should have similar salaries
Include employees who joined in different years





Write SQL queries to find:
=============================

Employees whose salary is greater than ₹60,000.
Employees whose salary is less than ₹50,000.
Employees whose age is greater than 30.
Employees whose experience is greater than or equal to 5 years.
Employees working in IT or Finance.
Employees working in IT, HR, or Sales.
Employees not working in IT or HR.
Employees from Indore or Pune.
Employees who are not from Indore, Mumbai, or Bhopal.
Employees whose salary is between ₹40,000 and ₹70,000.
Employees whose age is between 25 and 35.
Employees whose experience is between 3 and 7 years.
Employees who joined between 2022 and 2025.
Employees who joined before 2023.
Employees who joined after 2024.
Employees from Indore AND working in IT.
Employees working in IT AND having salary greater than ₹70,000.
Employees whose salary is between ₹50,000 and ₹90,000 AND experience is greater than 4 years.
Employees working in IT or Finance AND salary greater than ₹60,000.
Employees whose joining date is between 2021 and 2024 AND salary is greater than ₹50,000.
Employees whose salary is not between ₹40,000 and ₹70,000.
Employees whose department is not IT, HR, or Sales.
Employees whose joining date is not between 2022 and 2025.
Employees from Indore or Pune, whose salary is between ₹45,000 and ₹80,000, and whose experience is more than 3 years.
Employees who did not join between 2020 and 2023 and whose salary is greater than ₹60,000.
Find employees who are from Indore, Pune, or Bangalore, whose salary is between ₹50,000 and ₹90,000, and whose experience is at least 4 years.
Find employees who are not from Bhopal or Mumbai, are not working in HR, and joined between 2021 and 2025.
Find employees working in IT or Finance, whose salary is greater than ₹60,000, whose age is between 25 and 35, and who joined after 2022.
Find employees whose salary is NOT between ₹40,000 and ₹75,000, whose experience is between 2 and 8 years, and who are not working in Sales.
Find employees who are from Indore or Pune, working in IT, Finance, or HR, with salary between ₹45,000 and ₹85,000, and who joined between 2020 and 2024.
`












CREATE DATABASE assignments;

-- Query OK, 1 row affected (0.01 sec)







mysql> USE assignments;

-- Database changed









mysql> CREATE TABLE employees (emp_id INT PRIMARY KEY AUTO_INCREMENT, emp_name VARCHAR(50), department VARCHAR(30), city VARCHAR(40), salary DECIMAL(10,2), experience SMALLINT UNSIGNED, age SMALLINT, joining DATE);

-- Query OK, 0 rows affected (0.02 sec)











mysql> DESC employees;

-- +------------+-------------------+------+-----+---------+----------------+
-- | Field      | Type              | Null | Key | Default | Extra          |
-- +------------+-------------------+------+-----+---------+----------------+
-- | emp_id     | int               | NO   | PRI | NULL    | auto_increment |
-- | emp_name   | varchar(50)       | YES  |     | NULL    |                |
-- | department | varchar(30)       | YES  |     | NULL    |                |
-- | city       | varchar(40)       | YES  |     | NULL    |                |
-- | salary     | decimal(10,2)     | YES  |     | NULL    |                |
-- | experience | smallint unsigned | YES  |     | NULL    |                |
-- | age        | smallint          | YES  |     | NULL    |                |
-- | joining    | date              | YES  |     | NULL    |                |
-- +------------+-------------------+------+-----+---------+----------------+
-- 8 rows in set (0.00 sec)













mysql> INSERT INTO employees (emp_name, department, city, salary, experience, age, joining) VALUES
    -> ('Rahul Sharma', 'IT', 'Indore', 45000.00, 2, 24, '2024-06-15'),
    -> ('Priya Verma', 'HR', 'Bhopal', 52000.00, 4, 28, '2022-03-10'),
    -> ('Amit Patel', 'Finance', 'Pune', 68000.50, 6, 34, '2020-08-20'),
    -> ('Neha Singh', 'Sales', 'Mumbai', 55000.00, 3, 27, '2023-01-15'),
    -> ('Rohit Gupta', 'IT', 'Bangalore', 75000.75, 8, 36, '2020-11-05'),
    -> ('Anjali Mehta', 'HR', 'Indore', 48000.00, 2, 25, '2025-02-18'),
    -> ('Vikas Yadav', 'Finance', 'Bhopal', 82000.00, 10, 40, '2020-04-12'),
    -> ('Sneha Jain', 'Sales', 'Pune', 60000.50, 5, 31, '2021-07-25'),
    -> ('Karan Malviya', 'IT', 'Mumbai', 70000.00, 7, 33, '2022-09-10'),
    -> ('Pooja Sharma', 'HR', 'Bangalore', 45000.50, 3, 26, '2024-01-20'),
    -> ('Deepak Verma', 'Finance', 'Indore', 90000.00, 9, 38, '2021-05-14'),
    -> ('Kavita Patel', 'Sales', 'Bhopal', 52000.50, 4, 29, '2023-10-05'),
    -> ('Manish Joshi', 'IT', 'Pune', 30000.00, 1, 22, '2026-02-10'),
    -> ('Riya Gupta', 'Finance', 'Mumbai', 78000.00, 6, 35, '2020-12-18'),
    -> ('Arjun Singh', 'Sales', 'Bangalore', 65000.00, 5, 30, '2025-06-01');

-- Query OK, 15 rows affected (0.01 sec)
-- Records: 15  Duplicates: 0  Warnings: 0












mysql> SELECT * FROM employees;

-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name      | department | city      | salary   | experience | age  | joining    |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- |      1 | Rahul Sharma  | IT         | Indore    | 45000.00 |          2 |   24 | 2024-06-15 |
-- |      2 | Priya Verma   | HR         | Bhopal    | 52000.00 |          4 |   28 | 2022-03-10 |
-- |      3 | Amit Patel    | Finance    | Pune      | 68000.50 |          6 |   34 | 2020-08-20 |
-- |      4 | Neha Singh    | Sales      | Mumbai    | 55000.00 |          3 |   27 | 2023-01-15 |
-- |      5 | Rohit Gupta   | IT         | Bangalore | 75000.75 |          8 |   36 | 2020-11-05 |
-- |      6 | Anjali Mehta  | HR         | Indore    | 48000.00 |          2 |   25 | 2025-02-18 |
-- |      7 | Vikas Yadav   | Finance    | Bhopal    | 82000.00 |         10 |   40 | 2020-04-12 |
-- |      8 | Sneha Jain    | Sales      | Pune      | 60000.50 |          5 |   31 | 2021-07-25 |
-- |      9 | Karan Malviya | IT         | Mumbai    | 70000.00 |          7 |   33 | 2022-09-10 |
-- |     10 | Pooja Sharma  | HR         | Bangalore | 45000.50 |          3 |   26 | 2024-01-20 |
-- |     11 | Deepak Verma  | Finance    | Indore    | 90000.00 |          9 |   38 | 2021-05-14 |
-- |     12 | Kavita Patel  | Sales      | Bhopal    | 52000.50 |          4 |   29 | 2023-10-05 |
-- |     13 | Manish Joshi  | IT         | Pune      | 30000.00 |          1 |   22 | 2026-02-10 |
-- |     14 | Riya Gupta    | Finance    | Mumbai    | 78000.00 |          6 |   35 | 2020-12-18 |
-- |     15 | Arjun Singh   | Sales      | Bangalore | 65000.00 |          5 |   30 | 2025-06-01 |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- 15 rows in set (0.00 sec)












mysql> SELECT * FROM employees WHERE salary>60000;

-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name      | department | city      | salary   | experience | age  | joining    |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- |      3 | Amit Patel    | Finance    | Pune      | 68000.50 |          6 |   34 | 2020-08-20 |
-- |      5 | Rohit Gupta   | IT         | Bangalore | 75000.75 |          8 |   36 | 2020-11-05 |
-- |      7 | Vikas Yadav   | Finance    | Bhopal    | 82000.00 |         10 |   40 | 2020-04-12 |
-- |      8 | Sneha Jain    | Sales      | Pune      | 60000.50 |          5 |   31 | 2021-07-25 |
-- |      9 | Karan Malviya | IT         | Mumbai    | 70000.00 |          7 |   33 | 2022-09-10 |
-- |     11 | Deepak Verma  | Finance    | Indore    | 90000.00 |          9 |   38 | 2021-05-14 |
-- |     14 | Riya Gupta    | Finance    | Mumbai    | 78000.00 |          6 |   35 | 2020-12-18 |
-- |     15 | Arjun Singh   | Sales      | Bangalore | 65000.00 |          5 |   30 | 2025-06-01 |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- 8 rows in set (0.00 sec)










mysql> SELECT * FROM employees WHERE salary<50000;

-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name     | department | city      | salary   | experience | age  | joining    |
-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- |      1 | Rahul Sharma | IT         | Indore    | 45000.00 |          2 |   24 | 2024-06-15 |
-- |      6 | Anjali Mehta | HR         | Indore    | 48000.00 |          2 |   25 | 2025-02-18 |
-- |     10 | Pooja Sharma | HR         | Bangalore | 45000.50 |          3 |   26 | 2024-01-20 |
-- |     13 | Manish Joshi | IT         | Pune      | 30000.00 |          1 |   22 | 2026-02-10 |
-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- 4 rows in set (0.00 sec)











mysql> SELECT * FROM employees WHERE age>30;

-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name      | department | city      | salary   | experience | age  | joining    |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- |      3 | Amit Patel    | Finance    | Pune      | 68000.50 |          6 |   34 | 2020-08-20 |
-- |      5 | Rohit Gupta   | IT         | Bangalore | 75000.75 |          8 |   36 | 2020-11-05 |
-- |      7 | Vikas Yadav   | Finance    | Bhopal    | 82000.00 |         10 |   40 | 2020-04-12 |
-- |      8 | Sneha Jain    | Sales      | Pune      | 60000.50 |          5 |   31 | 2021-07-25 |
-- |      9 | Karan Malviya | IT         | Mumbai    | 70000.00 |          7 |   33 | 2022-09-10 |
-- |     11 | Deepak Verma  | Finance    | Indore    | 90000.00 |          9 |   38 | 2021-05-14 |
-- |     14 | Riya Gupta    | Finance    | Mumbai    | 78000.00 |          6 |   35 | 2020-12-18 |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- 7 rows in set (0.00 sec)











mysql> SELECT * FROM employees WHERE experience>=5;

-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name      | department | city      | salary   | experience | age  | joining    |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- |      3 | Amit Patel    | Finance    | Pune      | 68000.50 |          6 |   34 | 2020-08-20 |
-- |      5 | Rohit Gupta   | IT         | Bangalore | 75000.75 |          8 |   36 | 2020-11-05 |
-- |      7 | Vikas Yadav   | Finance    | Bhopal    | 82000.00 |         10 |   40 | 2020-04-12 |
-- |      8 | Sneha Jain    | Sales      | Pune      | 60000.50 |          5 |   31 | 2021-07-25 |
-- |      9 | Karan Malviya | IT         | Mumbai    | 70000.00 |          7 |   33 | 2022-09-10 |
-- |     11 | Deepak Verma  | Finance    | Indore    | 90000.00 |          9 |   38 | 2021-05-14 |
-- |     14 | Riya Gupta    | Finance    | Mumbai    | 78000.00 |          6 |   35 | 2020-12-18 |
-- |     15 | Arjun Singh   | Sales      | Bangalore | 65000.00 |          5 |   30 | 2025-06-01 |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- 8 rows in set (0.00 sec)











mysql> SELECT * FROM employees WHERE department = 'IT' OR department = 'Finance';

-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name      | department | city      | salary   | experience | age  | joining    |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- |      1 | Rahul Sharma  | IT         | Indore    | 45000.00 |          2 |   24 | 2024-06-15 |
-- |      3 | Amit Patel    | Finance    | Pune      | 68000.50 |          6 |   34 | 2020-08-20 |
-- |      5 | Rohit Gupta   | IT         | Bangalore | 75000.75 |          8 |   36 | 2020-11-05 |
-- |      7 | Vikas Yadav   | Finance    | Bhopal    | 82000.00 |         10 |   40 | 2020-04-12 |
-- |      9 | Karan Malviya | IT         | Mumbai    | 70000.00 |          7 |   33 | 2022-09-10 |
-- |     11 | Deepak Verma  | Finance    | Indore    | 90000.00 |          9 |   38 | 2021-05-14 |
-- |     13 | Manish Joshi  | IT         | Pune      | 30000.00 |          1 |   22 | 2026-02-10 |
-- |     14 | Riya Gupta    | Finance    | Mumbai    | 78000.00 |          6 |   35 | 2020-12-18 |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- 8 rows in set (0.00 sec)











mysql> SELECT * FROM employees WHERE department IN( 'IT', 'HR', 'Sales');

-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name      | department | city      | salary   | experience | age  | joining    |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- |      1 | Rahul Sharma  | IT         | Indore    | 45000.00 |          2 |   24 | 2024-06-15 |
-- |      2 | Priya Verma   | HR         | Bhopal    | 52000.00 |          4 |   28 | 2022-03-10 |
-- |      4 | Neha Singh    | Sales      | Mumbai    | 55000.00 |          3 |   27 | 2023-01-15 |
-- |      5 | Rohit Gupta   | IT         | Bangalore | 75000.75 |          8 |   36 | 2020-11-05 |
-- |      6 | Anjali Mehta  | HR         | Indore    | 48000.00 |          2 |   25 | 2025-02-18 |
-- |      8 | Sneha Jain    | Sales      | Pune      | 60000.50 |          5 |   31 | 2021-07-25 |
-- |      9 | Karan Malviya | IT         | Mumbai    | 70000.00 |          7 |   33 | 2022-09-10 |
-- |     10 | Pooja Sharma  | HR         | Bangalore | 45000.50 |          3 |   26 | 2024-01-20 |
-- |     12 | Kavita Patel  | Sales      | Bhopal    | 52000.50 |          4 |   29 | 2023-10-05 |
-- |     13 | Manish Joshi  | IT         | Pune      | 30000.00 |          1 |   22 | 2026-02-10 |
-- |     15 | Arjun Singh   | Sales      | Bangalore | 65000.00 |          5 |   30 | 2025-06-01 |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- 11 rows in set (0.00 sec)











mysql> SELECT * FROM employees WHERE department NOT IN( 'IT','HR');

-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name     | department | city      | salary   | experience | age  | joining    |
-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- |      3 | Amit Patel   | Finance    | Pune      | 68000.50 |          6 |   34 | 2020-08-20 |
-- |      4 | Neha Singh   | Sales      | Mumbai    | 55000.00 |          3 |   27 | 2023-01-15 |
-- |      7 | Vikas Yadav  | Finance    | Bhopal    | 82000.00 |         10 |   40 | 2020-04-12 |
-- |      8 | Sneha Jain   | Sales      | Pune      | 60000.50 |          5 |   31 | 2021-07-25 |
-- |     11 | Deepak Verma | Finance    | Indore    | 90000.00 |          9 |   38 | 2021-05-14 |
-- |     12 | Kavita Patel | Sales      | Bhopal    | 52000.50 |          4 |   29 | 2023-10-05 |
-- |     14 | Riya Gupta   | Finance    | Mumbai    | 78000.00 |          6 |   35 | 2020-12-18 |
-- |     15 | Arjun Singh  | Sales      | Bangalore | 65000.00 |          5 |   30 | 2025-06-01 |
-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- 8 rows in set (0.00 sec)














mysql> SELECT * FROM employees WHERE city = 'Indore' OR city = 'Finance';

-- +--------+--------------+------------+--------+----------+------------+------+------------+
-- | emp_id | emp_name     | department | city   | salary   | experience | age  | joining    |
-- +--------+--------------+------------+--------+----------+------------+------+------------+
-- |      1 | Rahul Sharma | IT         | Indore | 45000.00 |          2 |   24 | 2024-06-15 |
-- |      6 | Anjali Mehta | HR         | Indore | 48000.00 |          2 |   25 | 2025-02-18 |
-- |     11 | Deepak Verma | Finance    | Indore | 90000.00 |          9 |   38 | 2021-05-14 |
-- +--------+--------------+------------+--------+----------+------------+------+------------+
-- 3 rows in set (0.00 sec)












mysql> SELECT * FROM employees WHERE city = 'Indore' OR city = 'Pune';

-- +--------+--------------+------------+--------+----------+------------+------+------------+
-- | emp_id | emp_name     | department | city   | salary   | experience | age  | joining    |
-- +--------+--------------+------------+--------+----------+------------+------+------------+
-- |      1 | Rahul Sharma | IT         | Indore | 45000.00 |          2 |   24 | 2024-06-15 |
-- |      3 | Amit Patel   | Finance    | Pune   | 68000.50 |          6 |   34 | 2020-08-20 |
-- |      6 | Anjali Mehta | HR         | Indore | 48000.00 |          2 |   25 | 2025-02-18 |
-- |      8 | Sneha Jain   | Sales      | Pune   | 60000.50 |          5 |   31 | 2021-07-25 |
-- |     11 | Deepak Verma | Finance    | Indore | 90000.00 |          9 |   38 | 2021-05-14 |
-- |     13 | Manish Joshi | IT         | Pune   | 30000.00 |          1 |   22 | 2026-02-10 |
-- +--------+--------------+------------+--------+----------+------------+------+------------+
-- 6 rows in set (0.00 sec)












mysql> SELECT * FROM employees WHERE city NOT IN( 'Indore', 'Mumbai', 'Bhopal');

-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name     | department | city      | salary   | experience | age  | joining    |
-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- |      3 | Amit Patel   | Finance    | Pune      | 68000.50 |          6 |   34 | 2020-08-20 |
-- |      5 | Rohit Gupta  | IT         | Bangalore | 75000.75 |          8 |   36 | 2020-11-05 |
-- |      8 | Sneha Jain   | Sales      | Pune      | 60000.50 |          5 |   31 | 2021-07-25 |
-- |     10 | Pooja Sharma | HR         | Bangalore | 45000.50 |          3 |   26 | 2024-01-20 |
-- |     13 | Manish Joshi | IT         | Pune      | 30000.00 |          1 |   22 | 2026-02-10 |
-- |     15 | Arjun Singh  | Sales      | Bangalore | 65000.00 |          5 |   30 | 2025-06-01 |
-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- 6 rows in set (0.00 sec)












mysql> SELECT * FROM employees WHERE salary BETWEEN 40000 AND 70000;

-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name      | department | city      | salary   | experience | age  | joining    |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- |      1 | Rahul Sharma  | IT         | Indore    | 45000.00 |          2 |   24 | 2024-06-15 |
-- |      2 | Priya Verma   | HR         | Bhopal    | 52000.00 |          4 |   28 | 2022-03-10 |
-- |      3 | Amit Patel    | Finance    | Pune      | 68000.50 |          6 |   34 | 2020-08-20 |
-- |      4 | Neha Singh    | Sales      | Mumbai    | 55000.00 |          3 |   27 | 2023-01-15 |
-- |      6 | Anjali Mehta  | HR         | Indore    | 48000.00 |          2 |   25 | 2025-02-18 |
-- |      8 | Sneha Jain    | Sales      | Pune      | 60000.50 |          5 |   31 | 2021-07-25 |
-- |      9 | Karan Malviya | IT         | Mumbai    | 70000.00 |          7 |   33 | 2022-09-10 |
-- |     10 | Pooja Sharma  | HR         | Bangalore | 45000.50 |          3 |   26 | 2024-01-20 |
-- |     12 | Kavita Patel  | Sales      | Bhopal    | 52000.50 |          4 |   29 | 2023-10-05 |
-- |     15 | Arjun Singh   | Sales      | Bangalore | 65000.00 |          5 |   30 | 2025-06-01 |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- 10 rows in set (0.00 sec)













mysql> SELECT * FROM employees WHERE age BETWEEN 25 AND 35;

-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name      | department | city      | salary   | experience | age  | joining    |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- |      2 | Priya Verma   | HR         | Bhopal    | 52000.00 |          4 |   28 | 2022-03-10 |
-- |      3 | Amit Patel    | Finance    | Pune      | 68000.50 |          6 |   34 | 2020-08-20 |
-- |      4 | Neha Singh    | Sales      | Mumbai    | 55000.00 |          3 |   27 | 2023-01-15 |
-- |      6 | Anjali Mehta  | HR         | Indore    | 48000.00 |          2 |   25 | 2025-02-18 |
-- |      8 | Sneha Jain    | Sales      | Pune      | 60000.50 |          5 |   31 | 2021-07-25 |
-- |      9 | Karan Malviya | IT         | Mumbai    | 70000.00 |          7 |   33 | 2022-09-10 |
-- |     10 | Pooja Sharma  | HR         | Bangalore | 45000.50 |          3 |   26 | 2024-01-20 |
-- |     12 | Kavita Patel  | Sales      | Bhopal    | 52000.50 |          4 |   29 | 2023-10-05 |
-- |     14 | Riya Gupta    | Finance    | Mumbai    | 78000.00 |          6 |   35 | 2020-12-18 |
-- |     15 | Arjun Singh   | Sales      | Bangalore | 65000.00 |          5 |   30 | 2025-06-01 |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- 10 rows in set (0.00 sec)















mysql> SELECT * FROM employees WHERE experience BETWEEN 3 AND 7;

-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name      | department | city      | salary   | experience | age  | joining    |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- |      2 | Priya Verma   | HR         | Bhopal    | 52000.00 |          4 |   28 | 2022-03-10 |
-- |      3 | Amit Patel    | Finance    | Pune      | 68000.50 |          6 |   34 | 2020-08-20 |
-- |      4 | Neha Singh    | Sales      | Mumbai    | 55000.00 |          3 |   27 | 2023-01-15 |
-- |      8 | Sneha Jain    | Sales      | Pune      | 60000.50 |          5 |   31 | 2021-07-25 |
-- |      9 | Karan Malviya | IT         | Mumbai    | 70000.00 |          7 |   33 | 2022-09-10 |
-- |     10 | Pooja Sharma  | HR         | Bangalore | 45000.50 |          3 |   26 | 2024-01-20 |
-- |     12 | Kavita Patel  | Sales      | Bhopal    | 52000.50 |          4 |   29 | 2023-10-05 |
-- |     14 | Riya Gupta    | Finance    | Mumbai    | 78000.00 |          6 |   35 | 2020-12-18 |
-- |     15 | Arjun Singh   | Sales      | Bangalore | 65000.00 |          5 |   30 | 2025-06-01 |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- 9 rows in set (0.00 sec)















mysql> SELECT * FROM employees WHERE joining BETWEEN '2022-01-01' AND '2025-12-31';

-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name      | department | city      | salary   | experience | age  | joining    |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- |      1 | Rahul Sharma  | IT         | Indore    | 45000.00 |          2 |   24 | 2024-06-15 |
-- |      2 | Priya Verma   | HR         | Bhopal    | 52000.00 |          4 |   28 | 2022-03-10 |
-- |      4 | Neha Singh    | Sales      | Mumbai    | 55000.00 |          3 |   27 | 2023-01-15 |
-- |      6 | Anjali Mehta  | HR         | Indore    | 48000.00 |          2 |   25 | 2025-02-18 |
-- |      9 | Karan Malviya | IT         | Mumbai    | 70000.00 |          7 |   33 | 2022-09-10 |
-- |     10 | Pooja Sharma  | HR         | Bangalore | 45000.50 |          3 |   26 | 2024-01-20 |
-- |     12 | Kavita Patel  | Sales      | Bhopal    | 52000.50 |          4 |   29 | 2023-10-05 |
-- |     15 | Arjun Singh   | Sales      | Bangalore | 65000.00 |          5 |   30 | 2025-06-01 |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- 8 rows in set (0.00 sec)











mysql> SELECT * FROM employees WHERE joining < '2023-01-01';

-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name      | department | city      | salary   | experience | age  | joining    |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- |      2 | Priya Verma   | HR         | Bhopal    | 52000.00 |          4 |   28 | 2022-03-10 |
-- |      3 | Amit Patel    | Finance    | Pune      | 68000.50 |          6 |   34 | 2020-08-20 |
-- |      5 | Rohit Gupta   | IT         | Bangalore | 75000.75 |          8 |   36 | 2020-11-05 |
-- |      7 | Vikas Yadav   | Finance    | Bhopal    | 82000.00 |         10 |   40 | 2020-04-12 |
-- |      8 | Sneha Jain    | Sales      | Pune      | 60000.50 |          5 |   31 | 2021-07-25 |
-- |      9 | Karan Malviya | IT         | Mumbai    | 70000.00 |          7 |   33 | 2022-09-10 |
-- |     11 | Deepak Verma  | Finance    | Indore    | 90000.00 |          9 |   38 | 2021-05-14 |
-- |     14 | Riya Gupta    | Finance    | Mumbai    | 78000.00 |          6 |   35 | 2020-12-18 |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- 8 rows in set (0.01 sec)















mysql> SELECT * FROM employees WHERE joining > '2024-12-31';

-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name     | department | city      | salary   | experience | age  | joining    |
-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- |      6 | Anjali Mehta | HR         | Indore    | 48000.00 |          2 |   25 | 2025-02-18 |
-- |     13 | Manish Joshi | IT         | Pune      | 30000.00 |          1 |   22 | 2026-02-10 |
-- |     15 | Arjun Singh  | Sales      | Bangalore | 65000.00 |          5 |   30 | 2025-06-01 |
-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- 3 rows in set (0.00 sec)













mysql> SELECT * FROM employees WHERE city='Indore' AND department='IT';

-- +--------+--------------+------------+--------+----------+------------+------+------------+
-- | emp_id | emp_name     | department | city   | salary   | experience | age  | joining    |
-- +--------+--------------+------------+--------+----------+------------+------+------------+
-- |      1 | Rahul Sharma | IT         | Indore | 45000.00 |          2 |   24 | 2024-06-15 |
-- +--------+--------------+------------+--------+----------+------------+------+------------+
-- 1 row in set (0.00 sec)











mysql> SELECT * FROM employees WHERE department='IT' AND salary>70000;

-- +--------+-------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name    | department | city      | salary   | experience | age  | joining    |
-- +--------+-------------+------------+-----------+----------+------------+------+------------+
-- |      5 | Rohit Gupta | IT         | Bangalore | 75000.75 |          8 |   36 | 2020-11-05 |
-- +--------+-------------+------------+-----------+----------+------------+------+------------+
-- 1 row in set (0.00 sec)












mysql> SELECT * FROM employees WHERE department='IT' AND salary>70000;

-- +--------+-------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name    | department | city      | salary   | experience | age  | joining    |
-- +--------+-------------+------------+-----------+----------+------------+------+------------+
-- |      5 | Rohit Gupta | IT         | Bangalore | 75000.75 |          8 |   36 | 2020-11-05 |
-- +--------+-------------+------------+-----------+----------+------------+------+------------+
-- 1 row in set (0.00 sec)











mysql> SELECT * FROM employees WHERE salary BETWEEN 50000 AND 90000 AND experience>4;

-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name      | department | city      | salary   | experience | age  | joining    |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- |      3 | Amit Patel    | Finance    | Pune      | 68000.50 |          6 |   34 | 2020-08-20 |
-- |      5 | Rohit Gupta   | IT         | Bangalore | 75000.75 |          8 |   36 | 2020-11-05 |
-- |      7 | Vikas Yadav   | Finance    | Bhopal    | 82000.00 |         10 |   40 | 2020-04-12 |
-- |      8 | Sneha Jain    | Sales      | Pune      | 60000.50 |          5 |   31 | 2021-07-25 |
-- |      9 | Karan Malviya | IT         | Mumbai    | 70000.00 |          7 |   33 | 2022-09-10 |
-- |     11 | Deepak Verma  | Finance    | Indore    | 90000.00 |          9 |   38 | 2021-05-14 |
-- |     14 | Riya Gupta    | Finance    | Mumbai    | 78000.00 |          6 |   35 | 2020-12-18 |
-- |     15 | Arjun Singh   | Sales      | Bangalore | 65000.00 |          5 |   30 | 2025-06-01 |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- 8 rows in set (0.00 sec)












mysql> SELECT * FROM employees WHERE department IN ('IT', 'Finance') AND salary>60000;

-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name      | department | city      | salary   | experience | age  | joining    |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- |      3 | Amit Patel    | Finance    | Pune      | 68000.50 |          6 |   34 | 2020-08-20 |
-- |      5 | Rohit Gupta   | IT         | Bangalore | 75000.75 |          8 |   36 | 2020-11-05 |
-- |      7 | Vikas Yadav   | Finance    | Bhopal    | 82000.00 |         10 |   40 | 2020-04-12 |
-- |      9 | Karan Malviya | IT         | Mumbai    | 70000.00 |          7 |   33 | 2022-09-10 |
-- |     11 | Deepak Verma  | Finance    | Indore    | 90000.00 |          9 |   38 | 2021-05-14 |
-- |     14 | Riya Gupta    | Finance    | Mumbai    | 78000.00 |          6 |   35 | 2020-12-18 |
-- +--------+---------------+------------+-----------+----------+------------+------+------------+
-- 6 rows in set (0.00 sec)













mysql> SELECT * FROM employees WHERE joining BETWEEN '2021-01-01' AND '2024-12-31' AND salary > 50000;

-- +--------+---------------+------------+--------+----------+------------+------+------------+
-- | emp_id | emp_name      | department | city   | salary   | experience | age  | joining    |
-- +--------+---------------+------------+--------+----------+------------+------+------------+
-- |      2 | Priya Verma   | HR         | Bhopal | 52000.00 |          4 |   28 | 2022-03-10 |
-- |      4 | Neha Singh    | Sales      | Mumbai | 55000.00 |          3 |   27 | 2023-01-15 |
-- |      8 | Sneha Jain    | Sales      | Pune   | 60000.50 |          5 |   31 | 2021-07-25 |
-- |      9 | Karan Malviya | IT         | Mumbai | 70000.00 |          7 |   33 | 2022-09-10 |
-- |     11 | Deepak Verma  | Finance    | Indore | 90000.00 |          9 |   38 | 2021-05-14 |
-- |     12 | Kavita Patel  | Sales      | Bhopal | 52000.50 |          4 |   29 | 2023-10-05 |
-- +--------+---------------+------------+--------+----------+------------+------+------------+
-- 6 rows in set (0.00 sec)














mysql> SELECT * FROM employees WHERE salary NOT BETWEEN 40000 AND 70000;

-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name     | department | city      | salary   | experience | age  | joining    |
-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- |      5 | Rohit Gupta  | IT         | Bangalore | 75000.75 |          8 |   36 | 2020-11-05 |
-- |      7 | Vikas Yadav  | Finance    | Bhopal    | 82000.00 |         10 |   40 | 2020-04-12 |
-- |     11 | Deepak Verma | Finance    | Indore    | 90000.00 |          9 |   38 | 2021-05-14 |
-- |     13 | Manish Joshi | IT         | Pune      | 30000.00 |          1 |   22 | 2026-02-10 |
-- |     14 | Riya Gupta   | Finance    | Mumbai    | 78000.00 |          6 |   35 | 2020-12-18 |
-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- 5 rows in set (0.00 sec)














mysql> SELECT * FROM employees WHERE department NOT IN ('IT', 'HR', 'Sales');

-- +--------+--------------+------------+--------+----------+------------+------+------------+
-- | emp_id | emp_name     | department | city   | salary   | experience | age  | joining    |
-- +--------+--------------+------------+--------+----------+------------+------+------------+
-- |      3 | Amit Patel   | Finance    | Pune   | 68000.50 |          6 |   34 | 2020-08-20 |
-- |      7 | Vikas Yadav  | Finance    | Bhopal | 82000.00 |         10 |   40 | 2020-04-12 |
-- |     11 | Deepak Verma | Finance    | Indore | 90000.00 |          9 |   38 | 2021-05-14 |
-- |     14 | Riya Gupta   | Finance    | Mumbai | 78000.00 |          6 |   35 | 2020-12-18 |
-- +--------+--------------+------------+--------+----------+------------+------+------------+
-- 4 rows in set (0.00 sec)















mysql> SELECT * FROM employees WHERE joining NOT BETWEEN '2022-01-01' AND '2025-12-31';

-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name     | department | city      | salary   | experience | age  | joining    |
-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- |      3 | Amit Patel   | Finance    | Pune      | 68000.50 |          6 |   34 | 2020-08-20 |
-- |      5 | Rohit Gupta  | IT         | Bangalore | 75000.75 |          8 |   36 | 2020-11-05 |
-- |      7 | Vikas Yadav  | Finance    | Bhopal    | 82000.00 |         10 |   40 | 2020-04-12 |
-- |      8 | Sneha Jain   | Sales      | Pune      | 60000.50 |          5 |   31 | 2021-07-25 |
-- |     11 | Deepak Verma | Finance    | Indore    | 90000.00 |          9 |   38 | 2021-05-14 |
-- |     13 | Manish Joshi | IT         | Pune      | 30000.00 |          1 |   22 | 2026-02-10 |
-- |     14 | Riya Gupta   | Finance    | Mumbai    | 78000.00 |          6 |   35 | 2020-12-18 |
-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- 7 rows in set (0.00 sec)














mysql> SELECT * FROM employees WHERE city IN('Indore', 'Pune') AND salary BETWEEN 45000 AND 80000 AND experience > 3;

-- +--------+------------+------------+------+----------+------------+------+------------+
-- | emp_id | emp_name   | department | city | salary   | experience | age  | joining    |
-- +--------+------------+------------+------+----------+------------+------+------------+
-- |      3 | Amit Patel | Finance    | Pune | 68000.50 |          6 |   34 | 2020-08-20 |
-- |      8 | Sneha Jain | Sales      | Pune | 60000.50 |          5 |   31 | 2021-07-25 |
-- +--------+------------+------------+------+----------+------------+------+------------+
-- 2 rows in set (0.00 sec)












mysql> SELECT * FROM employees WHERE joining NOT BETWEEN '2020-01-01' AND '2023-12-31' AND salary > 60000;

-- +--------+-------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name    | department | city      | salary   | experience | age  | joining    |
-- +--------+-------------+------------+-----------+----------+------------+------+------------+
-- |     15 | Arjun Singh | Sales      | Bangalore | 65000.00 |          5 |   30 | 2025-06-01 |
-- +--------+-------------+------------+-----------+----------+------------+------+------------+
-- 1 row in set (0.00 sec)









mysql> SELECT * FROM employees WHERE city IN('Indore', 'Pune', 'Bangalore') AND salary BETWEEN 50000 AND 90000 AND experience >= 4;

-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name     | department | city      | salary   | experience | age  | joining    |
-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- |      3 | Amit Patel   | Finance    | Pune      | 68000.50 |          6 |   34 | 2020-08-20 |
-- |      5 | Rohit Gupta  | IT         | Bangalore | 75000.75 |          8 |   36 | 2020-11-05 |
-- |      8 | Sneha Jain   | Sales      | Pune      | 60000.50 |          5 |   31 | 2021-07-25 |
-- |     11 | Deepak Verma | Finance    | Indore    | 90000.00 |          9 |   38 | 2021-05-14 |
-- |     15 | Arjun Singh  | Sales      | Bangalore | 65000.00 |          5 |   30 | 2025-06-01 |
-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- 5 rows in set (0.00 sec)











mysql> SELECT * FROM employees WHERE city NOT IN('Bhopal', 'Mumbai') AND department NOT IN ('HR') AND joining BETWEEN '2021-01-01' AND '2025-12-31';

-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name     | department | city      | salary   | experience | age  | joining    |
-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- |      1 | Rahul Sharma | IT         | Indore    | 45000.00 |          2 |   24 | 2024-06-15 |
-- |      8 | Sneha Jain   | Sales      | Pune      | 60000.50 |          5 |   31 | 2021-07-25 |
-- |     11 | Deepak Verma | Finance    | Indore    | 90000.00 |          9 |   38 | 2021-05-14 |
-- |     15 | Arjun Singh  | Sales      | Bangalore | 65000.00 |          5 |   30 | 2025-06-01 |
-- +--------+--------------+------------+-----------+----------+------------+------+------------+
-- 4 rows in set (0.00 sec)











mysql> SELECT * FROM employees WHERE department IN ('IT', 'Finance') AND salary > 60000 AND age BETWEEN 25 AND 35 AND joining > '2022-12-31';

-- Empty set (0.00 sec)













mysql> SELECT * FROM employees WHERE salary NOT BETWEEN 40000 AND 75000 AND experience BETWEEN 2 AND 8 AND department != 'Sales';

-- +--------+-------------+------------+-----------+----------+------------+------+------------+
-- | emp_id | emp_name    | department | city      | salary   | experience | age  | joining    |
-- +--------+-------------+------------+-----------+----------+------------+------+------------+
-- |      5 | Rohit Gupta | IT         | Bangalore | 75000.75 |          8 |   36 | 2020-11-05 |
-- |     14 | Riya Gupta  | Finance    | Mumbai    | 78000.00 |          6 |   35 | 2020-12-18 |
-- +--------+-------------+------------+-----------+----------+------------+------+------------+
-- 2 rows in set (0.00 sec)













mysql> SELECT * FROM employees WHERE city IN ('Indore', 'Pune') AND department IN ('IT', 'Finance', 'HR') AND salary BETWEEN 45000 AND 85000 AND joining BETWEEN '2020-01-01' AND '2024-12-31';

-- --------+--------------+------------+--------+----------+------------+------+------------+
-- | emp_id | emp_name     | department | city   | salary   | experience | age  | joining    |
-- +--------+--------------+------------+--------+----------+------------+------+------------+
-- |      1 | Rahul Sharma | IT         | Indore | 45000.00 |          2 |   24 | 2024-06-15 |
-- |      3 | Amit Patel   | Finance    | Pune   | 68000.50 |          6 |   34 | 2020-08-20 |
-- +--------+--------------+------------+--------+----------+------------+------+------------+
-- 2 rows in set (0.00 sec)
