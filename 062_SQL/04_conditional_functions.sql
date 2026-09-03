`
Create a table with these columns:

Column	Data Type
staff_id	INT, Primary Key, Auto Increment
staff_name	VARCHAR(50)
department	VARCHAR(30)
city	VARCHAR(30)
salary	DECIMAL(10,2)
experience	INT
age	INT
email	VARCHAR(100), NULL allowed
phone	VARCHAR(15), NULL allowed
bonus	DECIMAL(10,2), NULL allowed
status	VARCHAR(20)
Data

Q1. IF()
Display staff_name, salary, and salary status. If salary is ₹60,000 or more, show 'High Salary', otherwise 'Low Salary'.

Q2. IF()
Display staff_name and experience status. If experience is 5 or more, show 'Experienced', otherwise 'Fresher'.

Q3. IFNULL()
Display staff_name and email. If email is NULL, display 'Email Not Available'.

Q4. COALESCE()
Display staff_name and contact information. Give priority to phone → email → 'No Contact'.

Q5. NULLIF()
Display staff_name and salary. If salary is exactly ₹50,000, return NULL; otherwise return the actual salary.

Q6. CASE
Create a salary category:

salary >= 80,000 → 'High'
salary >= 60,000 → 'Medium'
Otherwise → 'Low'

Q7. CASE + AND/OR
Create an employee category:

IT + experience >= 5 → 'IT Experienced'
Finance + salary >= 70,000 → 'Finance High Earner'
HR + experience >= 3 → 'HR Experienced'
Otherwise → 'Other'
`












mysql> CREATE TABLE staff( staff_id INT PRIMARY KEY AUTO_INCREMENT,
    -> staff_name VARCHAR(50),
    -> department VARCHAR(30),
    -> city VARCHAR(30),
    -> salary DECIMAL(10,2),
    -> experience INT,
    -> age INT,
    -> email VARCHAR(100),
    -> phone VARCHAR(15),
    -> bonus DECIMAL(10,2),
    -> status VARCHAR(20)
    -> );

-- Query OK, 0 rows affected (0.22 sec)




mysql> DESC staff;

-- +------------+---------------+------+-----+---------+----------------+
-- | Field      | Type          | Null | Key | Default | Extra          |
-- +------------+---------------+------+-----+---------+----------------+
-- | staff_id   | int           | NO   | PRI | NULL    | auto_increment |
-- | staff_name | varchar(50)   | YES  |     | NULL    |                |
-- | department | varchar(30)   | YES  |     | NULL    |                |
-- | city       | varchar(30)   | YES  |     | NULL    |                |
-- | salary     | decimal(10,2) | YES  |     | NULL    |                |
-- | experience | int           | YES  |     | NULL    |                |
-- | age        | int           | YES  |     | NULL    |                |
-- | email      | varchar(100)  | YES  |     | NULL    |                |
-- | phone      | varchar(15)   | YES  |     | NULL    |                |
-- | bonus      | decimal(10,2) | YES  |     | NULL    |                |
-- | status     | varchar(20)   | YES  |     | NULL    |                |
-- +------------+---------------+------+-----+---------+----------------+
-- 11 rows in set (0.06 sec)




mysql> INSERT INTO staff( staff_name, department, city, salary, experience, age, email, phone, bonus, status)
    -> VALUES
    -> ('Aarav', 'IT', 'Indore', 48000.00, 3, 26, 'aarav@gmail.com', '9876543210', 4000.00, 'Active'),
    -> ('Bhavna', 'HR', 'Bhopal', 56000.00, 5, 31, 'bhavna@gmail.com', '9876501234', 5000.00, 'Active'),
    -> ('Chetan', 'Finance', 'Delhi', 72000.00, 7, 35, 'chetan@gmail.com', '9123456780', 6500.00, 'Active'),
    -> ('Divya', 'IT', 'Pune', 85000.00, 9, 38, 'divya@gmail.com', '9988776655', 8000.00, 'Active'),
    -> ('Eshan', 'Sales', 'Indore', 50000.00, 4, 29, NULL, '9090909090', 4500.00, 'Inactive'),
    -> ('Farah', 'HR', 'Bhopal', 68000.00, 6, 34, 'farah@gmail.com', NULL, 6000.00, 'Active'),
    -> ('Gaurav', 'Finance', 'Mumbai', 75000.00, 8, 40, 'gaurav@gmail.com', '9345678901', NULL, 'Active'),
    -> ('Heena', 'IT', 'Delhi', 59000.00, 2, 30, NULL, NULL, 3500.00, 'Inactive'),
    -> ('Ishaan', 'Sales', 'Pune', 45000.00, 1, 25, 'ishaan@gmail.com', '9765432109', NULL, 'Active'),
    -> ('Jaya', 'HR', 'Indore', 82000.00, 7, 36, NULL, '9001122334', 7500.00, 'Active'),
    -> ('Karan', 'IT', 'Bhopal', 65000.00, 5, 28, 'karan@gmail.com', NULL, 5500.00, 'Active'),
    -> ('Meena', 'Finance', 'Jaipur', 60000.00, 4, 32, NULL, NULL, 5000.00, 'Inactive');

-- Query OK, 12 rows affected (0.03 sec)
-- Records: 12  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM staff;

-- +----------+------------+------------+--------+----------+------------+------+------------------+------------+---------+----------+
-- | staff_id | staff_name | department | city   | salary   | experience | age  | email            | phone      | bonus   | status   |
-- +----------+------------+------------+--------+----------+------------+------+------------------+------------+---------+----------+
-- |        1 | Aarav      | IT         | Indore | 48000.00 |          3 |   26 | aarav@gmail.com  | 9876543210 | 4000.00 | Active   |
-- |        2 | Bhavna     | HR         | Bhopal | 56000.00 |          5 |   31 | bhavna@gmail.com | 9876501234 | 5000.00 | Active   |
-- |        3 | Chetan     | Finance    | Delhi  | 72000.00 |          7 |   35 | chetan@gmail.com | 9123456780 | 6500.00 | Active   |
-- |        4 | Divya      | IT         | Pune   | 85000.00 |          9 |   38 | divya@gmail.com  | 9988776655 | 8000.00 | Active   |
-- |        5 | Eshan      | Sales      | Indore | 50000.00 |          4 |   29 | NULL             | 9090909090 | 4500.00 | Inactive |
-- |        6 | Farah      | HR         | Bhopal | 68000.00 |          6 |   34 | farah@gmail.com  | NULL       | 6000.00 | Active   |
-- |        7 | Gaurav     | Finance    | Mumbai | 75000.00 |          8 |   40 | gaurav@gmail.com | 9345678901 |    NULL | Active   |
-- |        8 | Heena      | IT         | Delhi  | 59000.00 |          2 |   30 | NULL             | NULL       | 3500.00 | Inactive |
-- |        9 | Ishaan     | Sales      | Pune   | 45000.00 |          1 |   25 | ishaan@gmail.com | 9765432109 |    NULL | Active   |
-- |       10 | Jaya       | HR         | Indore | 82000.00 |          7 |   36 | NULL             | 9001122334 | 7500.00 | Active   |
-- |       11 | Karan      | IT         | Bhopal | 65000.00 |          5 |   28 | karan@gmail.com  | NULL       | 5500.00 | Active   |
-- |       12 | Meena      | Finance    | Jaipur | 60000.00 |          4 |   32 | NULL             | NULL       | 5000.00 | Inactive |
-- +----------+------------+------------+--------+----------+------------+------+------------------+------------+---------+----------+
-- 12 rows in set (0.00 sec)




mysql> SELECT staff_name, salary, status, IF(salary>= 60000, 'High Salary', 'Low Salary') FROM staff;

-- +------------+----------+----------+-------------------------------------------------+
-- | staff_name | salary   | status   | IF(salary>= 60000, 'High Salary', 'Low Salary') |
-- +------------+----------+----------+-------------------------------------------------+
-- | Aarav      | 48000.00 | Active   | Low Salary                                      |
-- | Bhavna     | 56000.00 | Active   | Low Salary                                      |
-- | Chetan     | 72000.00 | Active   | High Salary                                     |
-- | Divya      | 85000.00 | Active   | High Salary                                     |
-- | Eshan      | 50000.00 | Inactive | Low Salary                                      |
-- | Farah      | 68000.00 | Active   | High Salary                                     |
-- | Gaurav     | 75000.00 | Active   | High Salary                                     |
-- | Heena      | 59000.00 | Inactive | Low Salary                                      |
-- | Ishaan     | 45000.00 | Active   | Low Salary                                      |
-- | Jaya       | 82000.00 | Active   | High Salary                                     |
-- | Karan      | 65000.00 | Active   | High Salary                                     |
-- | Meena      | 60000.00 | Inactive | High Salary                                     |
-- +------------+----------+----------+-------------------------------------------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT staff_name, experience, IF(experience >= 5, 'Experienced', 'Fresher') AS experience_status FROM staff;

-- +------------+------------+-------------------+
-- | staff_name | experience | experience_status |
-- +------------+------------+-------------------+
-- | Aarav      |          3 | Fresher           |
-- | Bhavna     |          5 | Experienced       |
-- | Chetan     |          7 | Experienced       |
-- | Divya      |          9 | Experienced       |
-- | Eshan      |          4 | Fresher           |
-- | Farah      |          6 | Experienced       |
-- | Gaurav     |          8 | Experienced       |
-- | Heena      |          2 | Fresher           |
-- | Ishaan     |          1 | Fresher           |
-- | Jaya       |          7 | Experienced       |
-- | Karan      |          5 | Experienced       |
-- | Meena      |          4 | Fresher           |
-- +------------+------------+-------------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT staff_name, email , IFNULL(email, 'Email Not Available') FROM staff;

-- +------------+------------------+--------------------------------------+
-- | staff_name | email            | IFNULL(email, 'Email Not Available') |
-- +------------+------------------+--------------------------------------+
-- | Aarav      | aarav@gmail.com  | aarav@gmail.com                      |
-- | Bhavna     | bhavna@gmail.com | bhavna@gmail.com                     |
-- | Chetan     | chetan@gmail.com | chetan@gmail.com                     |
-- | Divya      | divya@gmail.com  | divya@gmail.com                      |
-- | Eshan      | NULL             | Email Not Available                  |
-- | Farah      | farah@gmail.com  | farah@gmail.com                      |
-- | Gaurav     | gaurav@gmail.com | gaurav@gmail.com                     |
-- | Heena      | NULL             | Email Not Available                  |
-- | Ishaan     | ishaan@gmail.com | ishaan@gmail.com                     |
-- | Jaya       | NULL             | Email Not Available                  |
-- | Karan      | karan@gmail.com  | karan@gmail.com                      |
-- | Meena      | NULL             | Email Not Available                  |
-- +------------+------------------+--------------------------------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT staff_name, COALESCE(phone, email, 'No Contact') AS contact_information FROM staff;

-- +------------+---------------------+
-- | staff_name | contact_information |
-- +------------+---------------------+
-- | Aarav      | 9876543210          |
-- | Bhavna     | 9876501234          |
-- | Chetan     | 9123456780          |
-- | Divya      | 9988776655          |
-- | Eshan      | 9090909090          |
-- | Farah      | farah@gmail.com     |
-- | Gaurav     | 9345678901          |
-- | Heena      | No Contact          |
-- | Ishaan     | 9765432109          |
-- | Jaya       | 9001122334          |
-- | Karan      | karan@gmail.com     |
-- | Meena      | No Contact          |
-- +------------+---------------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT staff_name, salary, NULLIF(salary, 50000) FROM staff;

-- +------------+----------+-----------------------+
-- | staff_name | salary   | NULLIF(salary, 50000) |
-- +------------+----------+-----------------------+
-- | Aarav      | 48000.00 |              48000.00 |
-- | Bhavna     | 56000.00 |              56000.00 |
-- | Chetan     | 72000.00 |              72000.00 |
-- | Divya      | 85000.00 |              85000.00 |
-- | Eshan      | 50000.00 |                  NULL |
-- | Farah      | 68000.00 |              68000.00 |
-- | Gaurav     | 75000.00 |              75000.00 |
-- | Heena      | 59000.00 |              59000.00 |
-- | Ishaan     | 45000.00 |              45000.00 |
-- | Jaya       | 82000.00 |              82000.00 |
-- | Karan      | 65000.00 |              65000.00 |
-- | Meena      | 60000.00 |              60000.00 |
-- +------------+----------+-----------------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT staff_name,
    -> CASE
    ->     WHEN salary>= 80000 THEN 'HIGH'
    ->     WHEN salary>= 60000 THEN 'MEDIUM'
    ->     ELSE 'LOW'
    -> END AS salary_category FROM staff;

-- +------------+-----------------+
-- | staff_name | salary_category |
-- +------------+-----------------+
-- | Aarav      | LOW             |
-- | Bhavna     | LOW             |
-- | Chetan     | MEDIUM          |
-- | Divya      | HIGH            |
-- | Eshan      | LOW             |
-- | Farah      | MEDIUM          |
-- | Gaurav     | MEDIUM          |
-- | Heena      | LOW             |
-- | Ishaan     | LOW             |
-- | Jaya       | HIGH            |
-- | Karan      | MEDIUM          |
-- | Meena      | MEDIUM          |
-- +------------+-----------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT staff_name,
    -> CASE
    ->     WHEN (department= 'IT' AND experience >= 5) THEN 'IT Experienced'
    ->     WHEN (department= 'Finance' AND salary >= 70000) THEN 'Finance High Earner'
    ->     WHEN (department= 'HR' AND experience >= 3) THEN 'HR Experienced'
    ->     ELSE 'Other'
    -> END AS category FROM staff;

-- +------------+---------------------+
-- | staff_name | category            |
-- +------------+---------------------+
-- | Aarav      | Other               |
-- | Bhavna     | HR Experienced      |
-- | Chetan     | Finance High Earner |
-- | Divya      | IT Experienced      |
-- | Eshan      | Other               |
-- | Farah      | HR Experienced      |
-- | Gaurav     | Finance High Earner |
-- | Heena      | Other               |
-- | Ishaan     | Other               |
-- | Jaya       | HR Experienced      |
-- | Karan      | IT Experienced      |
-- | Meena      | Other               |
-- +------------+---------------------+
-- 12 rows in set (0.00 sec)