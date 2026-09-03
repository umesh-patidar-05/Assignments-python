`
# MYSQL NULL HANDLING FUNCTIONS — ASSIGNMENT

## SCENARIO

You are working as a Data Analyst for an e-commerce company. The company maintains employee sales and performance records.

Due to incomplete data entry, some fields may contain 'NULL' values or '0' values.

Your task is to write MySQL queries to generate different reports while correctly handling these missing values.

---

## TABLE: employee_performance

Create the following table:

    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    sales_amount DECIMAL(12,2),
    commission DECIMAL(10,2),
    target_amount DECIMAL(12,2),
    email VARCHAR(100),
    alternate_email VARCHAR(100)

## INSERT THE FOLLOWING DATA


(employee_id, employee_name, department, salary, bonus, sales_amount, commission, target_amount, email, alternate_email)
VALUES
(101, 'Aarav Sharma', 'Sales', 45000, 5000, 150000, 7500, 120000, 'aarav@gmail.com', 'aarav.alt@gmail.com'),
(102, 'Priya Verma', 'Marketing', 42000, NULL, 90000, 4500, 100000, 'priya@gmail.com', 'priya.alt@gmail.com'),
(103, 'Rahul Mehta', 'Sales', 50000, 7000, 200000, NULL, 180000, NULL, 'rahul.alt@gmail.com'),
(104, 'Sneha Patel', 'HR', 40000, NULL, NULL, NULL, 80000, 'sneha@gmail.com', NULL),
(105, 'Vikram Singh', 'Sales', 55000, 6000, 120000, 6000, 120000, NULL, NULL),
(106, 'Ananya Kapoor', 'Marketing', 43000, 3000, 75000, NULL, NULL, NULL, 'ananya.alt@gmail.com');

QUESTIONS
Q1 — Employee Earnings

The HR department wants to calculate the total earnings of every employee.

Calculate:

'Total Earnings = Salary + Bonus + Commission'

If 'bonus' or 'commission' is 'NULL', consider it as 0.

Display:

'employee_id | employee_name | salary | bonus | commission | total_earnings'

Q2 — Employee Contact Information

The HR department needs one available email address for every employee.

Follow these rules:

If the primary 'email' is available, display it.
If the primary 'email' is 'NULL', use 'alternate_email'.
If both are 'NULL', display:

'NO CONTACT AVAILABLE'

Display:

'employee_id | employee_name | contact_information'

Q3 — Sales Target Calculation

Management wants to calculate the percentage of the sales target achieved by each employee.

Use:

'Achievement Percentage =
(Sales Amount / Target Amount) × 100'

Follow these rules:

If 'sales_amount' is 'NULL', consider it as 0.
If 'target_amount' is 'NULL' or 0, the calculation should return 'NULL'.
The query must not produce a division-by-zero error.

Display:

'employee_id | employee_name | sales_amount | target_amount | achievement_percentage'

Q4 — Commission Percentage

The Finance Department wants to calculate the percentage of commission earned by each employee based on their sales.

Use:

'Commission Percentage =
(Commission / Sales Amount) × 100'

Follow these rules:

If 'commission' is 'NULL', consider it as 0.
If 'sales_amount' is 'NULL' or 0, the calculation should return 'NULL'.
The query must not produce a division-by-zero error.

Display:

'employee_id | employee_name | sales_amount | commission | commission_percentage'

Q5 — Combined NULL Handling ⭐

The HR department wants a report containing:

'employee_id | employee_name | email | alternate_email | contact_information'

For 'contact_information':

Use the primary email if it is available.
If the primary email is 'NULL', use the alternate email.
If both are 'NULL', display:

'NO CONTACT AVAILABLE'

Also, display another column called 'bonus_amount'.

If 'bonus' is 'NULL', display 0 instead.

The final output should contain:

'employee_id | employee_name | contact_information | bonus_amount'

IMPORTANT INSTRUCTIONS
Write a separate MySQL query for each question.
Handle 'NULL' values correctly.
Do not modify the given table structure or data.
Use appropriate NULL handling functions wherever required.
Functions to Practice
'IFNULL()'
'COALESCE()'
'NULLIF()'
`
















mysql> CREATE TABLE employee_performance(
    -> employee_id INT PRIMARY KEY,
    ->     employee_name VARCHAR(50),
    ->     department VARCHAR(30),
    ->     salary DECIMAL(10,2),
    ->     bonus DECIMAL(10,2),
    ->     sales_amount DECIMAL(12,2),
    ->     commission DECIMAL(10,2),
    ->     target_amount DECIMAL(12,2),
    ->     email VARCHAR(100),
    ->     alternate_email VARCHAR(100)
    -> );

-- Query OK, 0 rows affected (0.46 sec)




mysql> DESC employee_performance;

-- +-----------------+---------------+------+-----+---------+-------+
-- | Field           | Type          | Null | Key | Default | Extra |
-- +-----------------+---------------+------+-----+---------+-------+
-- | employee_id     | int           | NO   | PRI | NULL    |       |
-- | employee_name   | varchar(50)   | YES  |     | NULL    |       |
-- | department      | varchar(30)   | YES  |     | NULL    |       |
-- | salary          | decimal(10,2) | YES  |     | NULL    |       |
-- | bonus           | decimal(10,2) | YES  |     | NULL    |       |
-- | sales_amount    | decimal(12,2) | YES  |     | NULL    |       |
-- | commission      | decimal(10,2) | YES  |     | NULL    |       |
-- | target_amount   | decimal(12,2) | YES  |     | NULL    |       |
-- | email           | varchar(100)  | YES  |     | NULL    |       |
-- | alternate_email | varchar(100)  | YES  |     | NULL    |       |
-- +-----------------+---------------+------+-----+---------+-------+
-- 10 rows in set (0.00 sec)




mysql> INSERT INTO employee_performance (employee_id, employee_name, department, salary, bonus, sales_amount, commission, target_amount, email, alternate_email)
    -> VALUES
    -> (101, 'Aarav Sharma', 'Sales', 45000, 5000, 150000, 7500, 120000, 'aarav@gmail.com', 'aarav.alt@gmail.com'),
    -> (102, 'Priya Verma', 'Marketing', 42000, NULL, 90000, 4500, 100000, 'priya@gmail.com', 'priya.alt@gmail.com'),
    -> (103, 'Rahul Mehta', 'Sales', 50000, 7000, 200000, NULL, 180000, NULL, 'rahul.alt@gmail.com'),
    -> (104, 'Sneha Patel', 'HR', 40000, NULL, NULL, NULL, 80000, 'sneha@gmail.com', NULL),
    -> (105, 'Vikram Singh', 'Sales', 55000, 6000, 120000, 6000, 120000, NULL, NULL),
    -> (106, 'Ananya Kapoor', 'Marketing', 43000, 3000, 75000, NULL, NULL, NULL, 'ananya.alt@gmail.com');

-- Query OK, 6 rows affected (0.09 sec)
-- Records: 6  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM employee_performance;

-- +-------------+---------------+------------+----------+---------+--------------+------------+---------------+-----------------+----------------------+
-- | employee_id | employee_name | department | salary   | bonus   | sales_amount | commission | target_amount | email           | alternate_email      |
-- +-------------+---------------+------------+----------+---------+--------------+------------+---------------+-----------------+----------------------+
-- |         101 | Aarav Sharma  | Sales      | 45000.00 | 5000.00 |    150000.00 |    7500.00 |     120000.00 | aarav@gmail.com | aarav.alt@gmail.com  |
-- |         102 | Priya Verma   | Marketing  | 42000.00 |    NULL |     90000.00 |    4500.00 |     100000.00 | priya@gmail.com | priya.alt@gmail.com  |
-- |         103 | Rahul Mehta   | Sales      | 50000.00 | 7000.00 |    200000.00 |       NULL |     180000.00 | NULL            | rahul.alt@gmail.com  |
-- |         104 | Sneha Patel   | HR         | 40000.00 |    NULL |         NULL |       NULL |      80000.00 | sneha@gmail.com | NULL                 |
-- |         105 | Vikram Singh  | Sales      | 55000.00 | 6000.00 |    120000.00 |    6000.00 |     120000.00 | NULL            | NULL                 |
-- |         106 | Ananya Kapoor | Marketing  | 43000.00 | 3000.00 |     75000.00 |       NULL |          NULL | NULL            | ananya.alt@gmail.com |
-- +-------------+---------------+------------+----------+---------+--------------+------------+---------------+-----------------+----------------------+
-- 6 rows in set (0.00 sec)




mysql> SELECT employee_id, employee_name, salary, bonus, commission, salary +  IFNULL(bonus, 0) + IFNULL( commission, 0) AS total_earings FROM employee_performance;

-- +-------------+---------------+----------+---------+------------+---------------+
-- | employee_id | employee_name | salary   | bonus   | commission | total_earings |
-- +-------------+---------------+----------+---------+------------+---------------+
-- |         101 | Aarav Sharma  | 45000.00 | 5000.00 |    7500.00 |      57500.00 |
-- |         102 | Priya Verma   | 42000.00 |    NULL |    4500.00 |      46500.00 |
-- |         103 | Rahul Mehta   | 50000.00 | 7000.00 |       NULL |      57000.00 |
-- |         104 | Sneha Patel   | 40000.00 |    NULL |       NULL |      40000.00 |
-- |         105 | Vikram Singh  | 55000.00 | 6000.00 |    6000.00 |      67000.00 |
-- |         106 | Ananya Kapoor | 43000.00 | 3000.00 |       NULL |      46000.00 |
-- +-------------+---------------+----------+---------+------------+---------------+
-- 6 rows in set (0.00 sec)




mysql> SELECT employee_id, employee_name, COALESCE(email, alternate_email, 'NO CONTACT AVAILABLE') AS contact_information FROM employee_performance;

-- +-------------+---------------+----------------------+
-- | employee_id | employee_name | contact_information  |
-- +-------------+---------------+----------------------+
-- |         101 | Aarav Sharma  | aarav@gmail.com      |
-- |         102 | Priya Verma   | priya@gmail.com      |
-- |         103 | Rahul Mehta   | rahul.alt@gmail.com  |
-- |         104 | Sneha Patel   | sneha@gmail.com      |
-- |         105 | Vikram Singh  | NO CONTACT AVAILABLE |
-- |         106 | Ananya Kapoor | ananya.alt@gmail.com |
-- +-------------+---------------+----------------------+
-- 6 rows in set (0.00 sec)




mysql> SELECT employee_id, employee_name, sales_amount, target_amount, (IFNULL(sales_amount, 0) / NULLIF(target_amount, 0)) * 100 AS achievement_percentage FROM employee_performance;

-- +-------------+---------------+--------------+---------------+------------------------+
-- | employee_id | employee_name | sales_amount | target_amount | achievement_percentage |
-- +-------------+---------------+--------------+---------------+------------------------+
-- |         101 | Aarav Sharma  |    150000.00 |     120000.00 |             125.000000 |
-- |         102 | Priya Verma   |     90000.00 |     100000.00 |              90.000000 |
-- |         103 | Rahul Mehta   |    200000.00 |     180000.00 |             111.111111 |
-- |         104 | Sneha Patel   |         NULL |      80000.00 |               0.000000 |
-- |         105 | Vikram Singh  |    120000.00 |     120000.00 |             100.000000 |
-- |         106 | Ananya Kapoor |     75000.00 |          NULL |                   NULL |
-- +-------------+---------------+--------------+---------------+------------------------+
-- 6 rows in set (0.00 sec)




mysql> SELECT employee_id, employee_name, sales_amount, commission, ( IFNULL(commission, 0) / NULLIF(sales_amount, 0) * 100) AS commission_percentage FROM employee_performance;

-- +-------------+---------------+--------------+------------+-----------------------+
-- | employee_id | employee_name | sales_amount | commission | commission_percentage |
-- +-------------+---------------+--------------+------------+-----------------------+
-- |         101 | Aarav Sharma  |    150000.00 |    7500.00 |              5.000000 |
-- |         102 | Priya Verma   |     90000.00 |    4500.00 |              5.000000 |
-- |         103 | Rahul Mehta   |    200000.00 |       NULL |              0.000000 |
-- |         104 | Sneha Patel   |         NULL |       NULL |                  NULL |
-- |         105 | Vikram Singh  |    120000.00 |    6000.00 |              5.000000 |
-- |         106 | Ananya Kapoor |     75000.00 |       NULL |              0.000000 |
-- +-------------+---------------+--------------+------------+-----------------------+
-- 6 rows in set (0.00 sec)




mysql> SELECT employee_id, employee_name, COALESCE(email, alternate_email, 'NO CONTACT AVAILABLE') AS contact_information, IFNULL(bonus, 0) AS bonus_amount FROM employee_performance;

-- +-------------+---------------+----------------------+--------------+
-- | employee_id | employee_name | contact_information  | bonus_amount |
-- +-------------+---------------+----------------------+--------------+
-- |         101 | Aarav Sharma  | aarav@gmail.com      |      5000.00 |
-- |         102 | Priya Verma   | priya@gmail.com      |         0.00 |
-- |         103 | Rahul Mehta   | rahul.alt@gmail.com  |      7000.00 |
-- |         104 | Sneha Patel   | sneha@gmail.com      |         0.00 |
-- |         105 | Vikram Singh  | NO CONTACT AVAILABLE |      6000.00 |
-- |         106 | Ananya Kapoor | ananya.alt@gmail.com |      3000.00 |
-- +-------------+---------------+----------------------+--------------+
-- 6 rows in set (0.00 sec)