`
MYSQL NUMERIC FUNCTION
 
Create a table named:

numeric_practice

The table must contain these columns:

Column	Required Data Type
id	INT, Primary Key
employee_name	VARCHAR(50)
salary	DECIMAL(10,2)
bonus	DECIMAL(10,2)
experience	DECIMAL(5,2)
score	DECIMAL(5,2)
number_value	DECIMAL(10,3)
Task 2 — Insert Employee Data

Insert the following 15 employee records into your table:

ID	Employee	Salary	Bonus	Experience	Score	Number Value
1	Amit	45000.75	5000.50	2.5	78.456	-25.678
2	Rahul	52000.40	6500.25	3.2	85.789	15.234
3	Priya	38500.90	4200.75	1.8	67.345	-12.567
4	Neha	61000.55	8000.60	4.5	91.678	34.789
5	Rohit	47500.25	5500.40	2.2	72.123	-45.345
6	Sneha	72000.80	9500.90	5.7	88.567	25.678
7	Vikas	33000.35	3000.20	1.1	59.876	-18.234
8	Pooja	56500.65	7000.35	3.8	82.456	42.567
9	Karan	68000.45	8500.55	4.2	95.234	-33.789
10	Anjali	41000.70	4500.80	2.7	74.678	19.456
11	Suresh	55000.30	6200.45	3.5	69.345	-27.567
12	Kavita	49500.95	5800.65	2.9	86.789	51.234
13	Manish	76000.60	10000.75	6.3	92.567	-61.789
14	Riya	36000.85	3500.30	1.5	63.456	28.345
15	Arjun	64000.20	7800.50	4.8	89.123	-39.456

Q1 — ABS()

Display the employee name, number_value, and the absolute value of number_value.

Expected columns:

employee_name | number_value | absolute_value
Q2 — CEIL()

Display the employee name, salary, and salary rounded upward to the nearest whole number.

Expected columns:

employee_name | salary | rounded_salary
Q3 — FLOOR()

Display the employee name, salary, and salary rounded downward to the nearest whole number.

Expected columns:

employee_name | salary | rounded_salary
Q4 — ROUND()

Display the employee name, score, and score rounded to 1 decimal place.

Expected columns:

employee_name | score | rounded_score
Q5 — MOD()

Find all employees whose id is even using the MOD() function.

Expected result: IDs 2, 4, 6, 8, 10, 12, 14.

Write these 5 queries yourself and send them to me. I'll check each one and explain any mistake.
`









mysql> CREATE TABLE numeric_practice( id INT PRIMARY KEY,
    -> employee_name VARCHAR(50),
    -> salary DECIMAL(10,2),
    -> bonus DECIMAL(10,2),
    -> experience DECIMAL(5,2),
    -> number_value DECIMAL(10,3)
    -> );

-- Query OK, 0 rows affected (0.08 sec)




mysql> DESC numeric_practice;

-- +---------------+---------------+------+-----+---------+-------+
-- | Field         | Type          | Null | Key | Default | Extra |
-- +---------------+---------------+------+-----+---------+-------+
-- | id            | int           | NO   | PRI | NULL    |       |
-- | employee_name | varchar(50)   | YES  |     | NULL    |       |
-- | salary        | decimal(10,2) | YES  |     | NULL    |       |
-- | bonus         | decimal(10,2) | YES  |     | NULL    |       |
-- | experience    | decimal(5,2)  | YES  |     | NULL    |       |
-- | number_value  | decimal(10,3) | YES  |     | NULL    |       |
-- +---------------+---------------+------+-----+---------+-------+
-- 6 rows in set (0.01 sec)




mysql> ALTER TABLE numeric_practice ADD COLUMN score DECIMAL(5,2) AFTER experience;

-- Query OK, 0 rows affected (0.10 sec)
-- Records: 0  Duplicates: 0  Warnings: 0




mysql> DESC numeric_practice;

-- +---------------+---------------+------+-----+---------+-------+
-- | Field         | Type          | Null | Key | Default | Extra |
-- +---------------+---------------+------+-----+---------+-------+
-- | id            | int           | NO   | PRI | NULL    |       |
-- | employee_name | varchar(50)   | YES  |     | NULL    |       |
-- | salary        | decimal(10,2) | YES  |     | NULL    |       |
-- | bonus         | decimal(10,2) | YES  |     | NULL    |       |
-- | experience    | decimal(5,2)  | YES  |     | NULL    |       |
-- | score         | decimal(5,2)  | YES  |     | NULL    |       |
-- | number_value  | decimal(10,3) | YES  |     | NULL    |       |
-- +---------------+---------------+------+-----+---------+-------+
-- 7 rows in set (0.00 sec)




mysql> INSERT INTO numeric_practice
    -> VALUES
    -> (1, 'Amit', 45000.75, 5000.50, 2.5, 78.456, -25.678),
    -> (2, 'Rahul', 52000.40, 6500.25, 3.2, 85.789, 15.234),
    -> (3, 'Priya', 38500.90, 4200.75, 1.8, 67.345, -12.567),
    -> (4, 'Neha', 61000.55, 8000.60, 4.5, 91.678, 34.789),
    -> (5, 'Rohit', 47500.25, 5500.40, 2.2, 72.123, -45.345),
    -> (6, 'Sneha', 72000.80, 9500.90, 5.7, 88.567, 25.678),
    -> (7, 'Vikas', 33000.35, 3000.20, 1.1, 59.876, -18.234),
    -> (8, 'Pooja', 56500.65, 7000.35, 3.8, 82.456, 42.567),
    -> (9, 'Karan', 68000.45, 8500.55, 4.2, 95.234, -33.789),
    -> (10, 'Anjali', 41000.70, 4500.80, 2.7, 74.678, 19.456),
    -> (11, 'Suresh', 55000.30, 6200.45, 3.5, 69.345, -27.567),
    -> (12, 'Kavita', 49500.95, 5800.65, 2.9, 86.789, 51.234),
    -> (13, 'Manish', 76000.60, 10000.75, 6.3, 92.567, -61.789),
    -> (14, 'Riya', 36000.85, 3500.30, 1.5, 63.456, 28.345),
    -> (15, 'Arjun', 64000.20, 7800.50, 4.8, 89.123, -39.456);

-- Query OK, 15 rows affected, 15 warnings (0.01 sec)
-- Records: 15  Duplicates: 0  Warnings: 15




mysql> SELECT * FROM numeric_practice;

-- +----+---------------+----------+----------+------------+-------+--------------+
-- | id | employee_name | salary   | bonus    | experience | score | number_value |
-- +----+---------------+----------+----------+------------+-------+--------------+
-- |  1 | Amit          | 45000.75 |  5000.50 |       2.50 | 78.46 |      -25.678 |
-- |  2 | Rahul         | 52000.40 |  6500.25 |       3.20 | 85.79 |       15.234 |
-- |  3 | Priya         | 38500.90 |  4200.75 |       1.80 | 67.35 |      -12.567 |
-- |  4 | Neha          | 61000.55 |  8000.60 |       4.50 | 91.68 |       34.789 |
-- |  5 | Rohit         | 47500.25 |  5500.40 |       2.20 | 72.12 |      -45.345 |
-- |  6 | Sneha         | 72000.80 |  9500.90 |       5.70 | 88.57 |       25.678 |
-- |  7 | Vikas         | 33000.35 |  3000.20 |       1.10 | 59.88 |      -18.234 |
-- |  8 | Pooja         | 56500.65 |  7000.35 |       3.80 | 82.46 |       42.567 |
-- |  9 | Karan         | 68000.45 |  8500.55 |       4.20 | 95.23 |      -33.789 |
-- | 10 | Anjali        | 41000.70 |  4500.80 |       2.70 | 74.68 |       19.456 |
-- | 11 | Suresh        | 55000.30 |  6200.45 |       3.50 | 69.35 |      -27.567 |
-- | 12 | Kavita        | 49500.95 |  5800.65 |       2.90 | 86.79 |       51.234 |
-- | 13 | Manish        | 76000.60 | 10000.75 |       6.30 | 92.57 |      -61.789 |
-- | 14 | Riya          | 36000.85 |  3500.30 |       1.50 | 63.46 |       28.345 |
-- | 15 | Arjun         | 64000.20 |  7800.50 |       4.80 | 89.12 |      -39.456 |
-- +----+---------------+----------+----------+------------+-------+--------------+
-- 15 rows in set (0.00 sec)




mysql> SELECT employee_name, number_value, ABS(number_value) AS absolute_value FROM numeric_practice;

-- +---------------+--------------+----------------+
-- | employee_name | number_value | absolute_value |
-- +---------------+--------------+----------------+
-- | Amit          |      -25.678 |         25.678 |
-- | Rahul         |       15.234 |         15.234 |
-- | Priya         |      -12.567 |         12.567 |
-- | Neha          |       34.789 |         34.789 |
-- | Rohit         |      -45.345 |         45.345 |
-- | Sneha         |       25.678 |         25.678 |
-- | Vikas         |      -18.234 |         18.234 |
-- | Pooja         |       42.567 |         42.567 |
-- | Karan         |      -33.789 |         33.789 |
-- | Anjali        |       19.456 |         19.456 |
-- | Suresh        |      -27.567 |         27.567 |
-- | Kavita        |       51.234 |         51.234 |
-- | Manish        |      -61.789 |         61.789 |
-- | Riya          |       28.345 |         28.345 |
-- | Arjun         |      -39.456 |         39.456 |
-- +---------------+--------------+----------------+
-- 15 rows in set (0.00 sec)




mysql> SELECT employee_name, number_value, salary, CEIL(salary) AS rounded_salary FROM numeric_practice;

-- +---------------+--------------+----------+----------------+
-- | employee_name | number_value | salary   | rounded_salary |
-- +---------------+--------------+----------+----------------+
-- | Amit          |      -25.678 | 45000.75 |          45001 |
-- | Rahul         |       15.234 | 52000.40 |          52001 |
-- | Priya         |      -12.567 | 38500.90 |          38501 |
-- | Neha          |       34.789 | 61000.55 |          61001 |
-- | Rohit         |      -45.345 | 47500.25 |          47501 |
-- | Sneha         |       25.678 | 72000.80 |          72001 |
-- | Vikas         |      -18.234 | 33000.35 |          33001 |
-- | Pooja         |       42.567 | 56500.65 |          56501 |
-- | Karan         |      -33.789 | 68000.45 |          68001 |
-- | Anjali        |       19.456 | 41000.70 |          41001 |
-- | Suresh        |      -27.567 | 55000.30 |          55001 |
-- | Kavita        |       51.234 | 49500.95 |          49501 |
-- | Manish        |      -61.789 | 76000.60 |          76001 |
-- | Riya          |       28.345 | 36000.85 |          36001 |
-- | Arjun         |      -39.456 | 64000.20 |          64001 |
-- +---------------+--------------+----------+----------------+
-- 15 rows in set (0.00 sec)




mysql> SELECT employee_name, salary, FLOOR(salary) FROM numeric_practice;

-- +---------------+----------+---------------+
-- | employee_name | salary   | FLOOR(salary) |
-- +---------------+----------+---------------+
-- | Amit          | 45000.75 |         45000 |
-- | Rahul         | 52000.40 |         52000 |
-- | Priya         | 38500.90 |         38500 |
-- | Neha          | 61000.55 |         61000 |
-- | Rohit         | 47500.25 |         47500 |
-- | Sneha         | 72000.80 |         72000 |
-- | Vikas         | 33000.35 |         33000 |
-- | Pooja         | 56500.65 |         56500 |
-- | Karan         | 68000.45 |         68000 |
-- | Anjali        | 41000.70 |         41000 |
-- | Suresh        | 55000.30 |         55000 |
-- | Kavita        | 49500.95 |         49500 |
-- | Manish        | 76000.60 |         76000 |
-- | Riya          | 36000.85 |         36000 |
-- | Arjun         | 64000.20 |         64000 |
-- +---------------+----------+---------------+
-- 15 rows in set (0.01 sec)




mysql> SELECT employee_name, score, ROUND(score, 1) AS rounded_score FROM numeric_practice;

-- +---------------+-------+---------------+
-- | employee_name | score | rounded_score |
-- +---------------+-------+---------------+
-- | Amit          | 78.46 |          78.5 |
-- | Rahul         | 85.79 |          85.8 |
-- | Priya         | 67.35 |          67.4 |
-- | Neha          | 91.68 |          91.7 |
-- | Rohit         | 72.12 |          72.1 |
-- | Sneha         | 88.57 |          88.6 |
-- | Vikas         | 59.88 |          59.9 |
-- | Pooja         | 82.46 |          82.5 |
-- | Karan         | 95.23 |          95.2 |
-- | Anjali        | 74.68 |          74.7 |
-- | Suresh        | 69.35 |          69.4 |
-- | Kavita        | 86.79 |          86.8 |
-- | Manish        | 92.57 |          92.6 |
-- | Riya          | 63.46 |          63.5 |
-- | Arjun         | 89.12 |          89.1 |
-- +---------------+-------+---------------+
-- 15 rows in set (0.00 sec)




mysql> SELECT * FROM numeric_practice WHERE MOD(id, 2) = 0;

-- +----+---------------+----------+---------+------------+-------+--------------+
-- | id | employee_name | salary   | bonus   | experience | score | number_value |
-- +----+---------------+----------+---------+------------+-------+--------------+
-- |  2 | Rahul         | 52000.40 | 6500.25 |       3.20 | 85.79 |       15.234 |
-- |  4 | Neha          | 61000.55 | 8000.60 |       4.50 | 91.68 |       34.789 |
-- |  6 | Sneha         | 72000.80 | 9500.90 |       5.70 | 88.57 |       25.678 |
-- |  8 | Pooja         | 56500.65 | 7000.35 |       3.80 | 82.46 |       42.567 |
-- | 10 | Anjali        | 41000.70 | 4500.80 |       2.70 | 74.68 |       19.456 |
-- | 12 | Kavita        | 49500.95 | 5800.65 |       2.90 | 86.79 |       51.234 |
-- | 14 | Riya          | 36000.85 | 3500.30 |       1.50 | 63.46 |       28.345 |
-- +----+---------------+----------+---------+------------+-------+--------------+
-- 7 rows in set (0.00 sec)