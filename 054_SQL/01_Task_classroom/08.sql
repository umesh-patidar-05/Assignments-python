`
QNO  8: Create and Insert into employees Table
Columns:

emp_id INT

emp_name VARCHAR(100)

gender VARCHAR(10)

dob DATE

department VARCHAR(100)

position VARCHAR(100)

salary DECIMAL(8,2)

joining_date DATE

phone VARCHAR(15)

Task:

Insert 5 employee records
`









mysql> CREATE TABLE employees( emp_id INT, emp_name VARCHAR(100), gender VARCHAR(10), dob DATE, department VARCHAR(100), position VARCHAR(100), salary DECIMAL(8,2), joining_date DATE, phone VARCHAR(15));

-- Query OK, 0 rows affected (0.03 sec)



mysql> DESC employees;

-- +--------------+--------------+------+-----+---------+-------+
-- | Field        | Type         | Null | Key | Default | Extra |
-- +--------------+--------------+------+-----+---------+-------+
-- | emp_id       | int          | YES  |     | NULL    |       |
-- | emp_name     | varchar(100) | YES  |     | NULL    |       |
-- | gender       | varchar(10)  | YES  |     | NULL    |       |
-- | dob          | date         | YES  |     | NULL    |       |
-- | department   | varchar(100) | YES  |     | NULL    |       |
-- | position     | varchar(100) | YES  |     | NULL    |       |
-- | salary       | decimal(8,2) | YES  |     | NULL    |       |
-- | joining_date | date         | YES  |     | NULL    |       |
-- | phone        | varchar(15)  | YES  |     | NULL    |       |
-- +--------------+--------------+------+-----+---------+-------+
-- 9 rows in set (0.00 sec)



mysql> INSERT INTO employees VALUES
    -> (1, 'Rahul Sharma', 'Male', '2000-05-14', 'IT', 'Software Developer', 45000.00, '2024-07-01', '9876543210'),
    -> (2, 'Priya Verma', 'Female', '1999-11-22', 'HR', 'HR Executive', 38000.00, '2023-06-15', '9876501234'),
    -> (3, 'Amit Patel', 'Male', '2001-02-10', 'Finance', 'Accountant', 42000.50, '2024-01-10', '9988776655'),
    -> (4, 'Neha Singh', 'Female', '1998-08-30', 'Marketing', 'Marketing Manager', 65000.00, '2022-09-05', '9123456789'),
    -> (5, 'Vikas Gupta', 'Male', '2000-12-18', 'IT', 'Backend Developer', 52000.75, '2024-03-20', '9012345678');

-- Query OK, 5 rows affected (0.01 sec)
-- Records: 5  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM employees;

-- +--------+--------------+--------+------------+------------+--------------------+----------+--------------+------------+
-- | emp_id | emp_name     | gender | dob        | department | position           | salary   | joining_date | phone      |
-- +--------+--------------+--------+------------+------------+--------------------+----------+--------------+------------+
-- |      1 | Rahul Sharma | Male   | 2000-05-14 | IT         | Software Developer | 45000.00 | 2024-07-01   | 9876543210 |
-- |      2 | Priya Verma  | Female | 1999-11-22 | HR         | HR Executive       | 38000.00 | 2023-06-15   | 9876501234 |
-- |      3 | Amit Patel   | Male   | 2001-02-10 | Finance    | Accountant         | 42000.50 | 2024-01-10   | 9988776655 |
-- |      4 | Neha Singh   | Female | 1998-08-30 | Marketing  | Marketing Manager  | 65000.00 | 2022-09-05   | 9123456789 |
-- |      5 | Vikas Gupta  | Male   | 2000-12-18 | IT         | Backend Developer  | 52000.75 | 2024-03-20   | 9012345678 |
-- +--------+--------------+--------+------------+------------+--------------------+----------+--------------+------------+
-- 5 rows in set (0.00 sec)

