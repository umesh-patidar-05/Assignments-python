`
Assignment 1 — Employee Management System
Objective

Create an Employee Management System database and design tables that cover the MySQL data types taught so far.

Use all the following data types at least once.

TINYINT, SMALLINT, MEDIUMINT, INT, BIGINT, DECIMAL, FLOAT, DOUBLE, CHAR, VARCHAR, TINYTEXT, TEXT, MEDIUMTEXT, LONGTEXT, ENUM,
SET, DATE, TIME, DATETIME, TIMESTAMP, YEAR, BOOLEAN

Also use:

PRIMARY KEY
AUTO_INCREMENT
UNSIGNED
DEFAULT CURRENT_TIMESTAMP
ON UPDATE CURRENT_TIMESTAMP


Part 1 — Create Database

Create a database named:

employee_management

Select the database.

Part 2 — Create employees Table

Create a table named:

employees

Use the following columns:

# Column Name Requirement
1 employee_id Employee unique ID; PRIMARY KEY + AUTO_INCREMENT
2 employee_code Fixed-length employee code
3 employee_name Employee full name
4 age Employee age; should not allow negative values
5 number_of_children Number of children
6 experience_months Total experience in months
7 salary Employee annual salary with exact decimal precision
8 performance_score Employee performance score with approximate decimal value
9 productivity_score Higher-precision approximate decimal value
10 department_id Department identification number
11 employee_status Employment status from predefined values
12 skills Employee can have multiple skills from predefined values
13 gender Employee gender from predefined values
14 date_of_birth Employee date of birth
15 joining_date Date employee joined company
16 login_time Daily office login time
17 interview_datetime Date and time of employee interview
18 birth_year Employee birth year
19 is_active Whether employee is currently active
20 short_note Very small text information
21 employee_description Employee description
22 training_history Larger training-related text
23 employee_profile Very large employee information
24 created_at Automatically store record creation date/time
25 updated_at Automatically update when record is modified

Important

You have to decide the appropriate data type for every column.

Do not blindly use VARCHAR everywhere.

For example:

"Employee can have multiple skills from a predefined list."

You should decide which MySQL datatype is appropriate.

Part 3 — Insert Data

Insert at least 15 employees.

Your data must satisfy the following requirements:

Employee ID

Do not manually provide employee_id.

Let AUTO_INCREMENT generate it.

Employee Code

Use fixed-length codes such as:

EMP001
EMP002
EMP003
Age

Use different realistic ages.

Include employees between approximately 22–55 years.

Numeric Data

Use different values for:

Number of children
Experience in months
Salary
Performance score
Productivity score

Include decimal salary values such as:

52500.50
78500.75
125000.25
Employee Status

Use all predefined statuses that you decide while creating the ENUM.

For example:

ACTIVE
INACTIVE
ON_LEAVE
RESIGNED
Skills

Use multiple combinations.

For example:

JAVA
PYTHON,MYSQL
JAVA,MYSQL
PYTHON,REACT,AWS
JAVA,PYTHON,MYSQL
Gender

Use all values defined in your ENUM.

Dates

Use different:

Birth dates
Joining dates
Time

Use different employee login times.

Date + Time

Insert different interview date/time values.

Year

Use different birth years.

Boolean

Insert both:

TRUE
FALSE
Text

Provide different values for:

Short note
Employee description
Training history
Employee profile
Part 4 — TIMESTAMP Requirement

For created_at:

The employee creation date and time should automatically be captured by MySQL.

For updated_at:

The employee modification date and time should automatically change whenever the employee record is updated.

Then:

Insert an employee.
Check created_at and updated_at.
Update the employee's name.
Check both timestamps again.
Verify that created_at remains unchanged.
Verify that updated_at changes.

This follows the timestamp behavior covered in your notes.

Part 5 — DDL Operations

After creating and inserting data into employees, perform the following operations.

ALTER TABLE
Add a column:
phone_number
Add a column:
email
Modify the size of employee_name.
Modify the size of employee_code.
Rename short_note to:
employee_note
Drop the email column.
Drop the phone_number column.
AUTO_INCREMENT using ALTER

Create another table:

employee_documents

Initially create document_id as a normal integer column.

Then use ALTER TABLE to make document_id an AUTO_INCREMENT column.

CREATE TABLE AS SELECT

Create:

employee_backup

using the existing employees table.

Copy the employee data into it.

TRUNCATE

Create:

employee_test

Insert some records.

Then:

Display the records.
TRUNCATE the table.
Display the records again.
Verify that the table still exists.
DROP

Finally:

Drop employee_test.
Drop employee_documents.
Verify the tables using SHOW TABLES.
Part 6 — Verification

Execute:

SHOW DATABASES;
SHOW TABLES;
DESC employees;
SHOW CREATE TABLE employees;

Then verify that your employees table contains all the required data types.
`






 


mysql> CREATE DATABASE employee_management;

-- Query OK, 1 row affected (0.13 sec)



mysql> USE employee_management;

-- Database changed






 CREATE TABLE employees(
    -> employee_id INT PRIMARY KEY AUTO_INCREMENT,
    -> employee_code CHAR(5),
    -> employee_name VARCHAR(30),
    -> age TINYINT UNSIGNED,
    -> number_of_children SMALLINT,
    -> experience_months MEDIUMINT,
    -> salary DECIMAL(10,2),
    -> performance_score FLOAT,
    -> productivity_score DOUBLE,
    -> department_id INT,
    -> employee_status ENUM('ACTIVE', 'INACTIVE', 'ON_LEAVE', 'RESIGNED'),
    -> skills SET( 'JAVA', 'PYTHON', 'MYSQL', 'REACT', 'AWS'),
    -> gender ENUM('MALE', 'FEMALE'),
    -> date_of_birth DATE,
    -> joining_date DATE,
    -> login_time TIME,
    -> interview_datetime DATETIME,
    -> birth_year YEAR,
    -> is_active BOOLEAN,
    -> short_note TINYTEXT,
    -> employee_description TEXT,
    -> training_history MEDIUMTEXT,
    -> employee_profile LONGTEXT,
    -> created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -> updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP);
Query OK, 0 rows affected (0.16 sec)





mysql> DESC employees;

-- +----------------------+-------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
-- | Field                | Type                                            | Null | Key | Default           | Extra                                         |
-- +----------------------+-------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
-- | employee_id          | int                                             | NO   | PRI | NULL              | auto_increment                                |
-- | employee_code        | char(5)                                         | YES  |     | NULL              |                                               |
-- | employee_name        | varchar(30)                                     | YES  |     | NULL              |                                               |
-- | age                  | tinyint unsigned                                | YES  |     | NULL              |                                               |
-- | number_of_children   | smallint                                        | YES  |     | NULL              |                                               |
-- | experience_months    | mediumint                                       | YES  |     | NULL              |                                               |
-- | salary               | decimal(10,2)                                   | YES  |     | NULL              |                                               |
-- | performance_score    | float                                           | YES  |     | NULL              |                                               |
-- | productivity_score   | double                                          | YES  |     | NULL              |                                               |
-- | department_id        | int                                             | YES  |     | NULL              |                                               |
-- | employee_status      | enum('ACTIVE','INACTIVE','ON_LEAVE','RESIGNED') | YES  |     | NULL              |                                               |
-- | skills               | set('JAVA','PYTHON','MYSQL','REACT','AWS')      | YES  |     | NULL              |                                               |
-- | gender               | enum('MALE','FEMALE')                           | YES  |     | NULL              |                                               |
-- | date_of_birth        | date                                            | YES  |     | NULL              |                                               |
-- | joining_date         | date                                            | YES  |     | NULL              |                                               |
-- | login_time           | time                                            | YES  |     | NULL              |                                               |
-- | interview_datetime   | datetime                                        | YES  |     | NULL              |                                               |
-- | birth_year           | year                                            | YES  |     | NULL              |                                               |
-- | is_active            | tinyint(1)                                      | YES  |     | NULL              |                                               |
-- | short_note           | tinytext                                        | YES  |     | NULL              |                                               |
-- | employee_description | text                                            | YES  |     | NULL              |                                               |
-- | training_history     | mediumtext                                      | YES  |     | NULL              |                                               |
-- | employee_profile     | longtext                                        | YES  |     | NULL              |                                               |
-- | created_at           | timestamp                                       | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED                             |
-- | updated_at           | timestamp                                       | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
-- +----------------------+-------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
-- 25 rows in set (0.04 sec)









mysql> ALTER TABLE employees MODIFY COLUMN employee_code CHAR(6);

-- Query OK, 0 rows affected (0.08 sec)
-- Records: 0  Duplicates: 0  Warnings: 0









mysql> DESC employees;

-- +----------------------+-------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
-- | Field                | Type                                            | Null | Key | Default           | Extra                                         |
-- +----------------------+-------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
-- | employee_id          | int                                             | NO   | PRI | NULL              | auto_increment                                |
-- | employee_code        | char(6)                                         | YES  |     | NULL              |                                               |
-- | employee_name        | varchar(30)                                     | YES  |     | NULL              |                                               |
-- | age                  | tinyint unsigned                                | YES  |     | NULL              |                                               |
-- | number_of_children   | smallint                                        | YES  |     | NULL              |                                               |
-- | experience_months    | mediumint                                       | YES  |     | NULL              |                                               |
-- | salary               | decimal(10,2)                                   | YES  |     | NULL              |                                               |
-- | performance_score    | float                                           | YES  |     | NULL              |                                               |
-- | productivity_score   | double                                          | YES  |     | NULL              |                                               |
-- | department_id        | int                                             | YES  |     | NULL              |                                               |
-- | employee_status      | enum('ACTIVE','INACTIVE','ON_LEAVE','RESIGNED') | YES  |     | NULL              |                                               |
-- | skills               | set('JAVA','PYTHON','MYSQL','REACT','AWS')      | YES  |     | NULL              |                                               |
-- | gender               | enum('MALE','FEMALE')                           | YES  |     | NULL              |                                               |
-- | date_of_birth        | date                                            | YES  |     | NULL              |                                               |
-- | joining_date         | date                                            | YES  |     | NULL              |                                               |
-- | login_time           | time                                            | YES  |     | NULL              |                                               |
-- | interview_datetime   | datetime                                        | YES  |     | NULL              |                                               |
-- | birth_year           | year                                            | YES  |     | NULL              |                                               |
-- | is_active            | tinyint(1)                                      | YES  |     | NULL              |                                               |
-- | short_note           | tinytext                                        | YES  |     | NULL              |                                               |
-- | employee_description | text                                            | YES  |     | NULL              |                                               |
-- | training_history     | mediumtext                                      | YES  |     | NULL              |                                               |
-- | employee_profile     | longtext                                        | YES  |     | NULL              |                                               |
-- | created_at           | timestamp                                       | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED                             |
-- | updated_at           | timestamp                                       | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
-- +----------------------+-------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
-- 25 rows in set (0.00 sec)










mysql> INSERT INTO employees
    -> (
    -> employee_code,
    -> employee_name,
    -> age,
    -> number_of_children,
    -> experience_months,
    -> salary,
    -> performance_score,
    -> productivity_score,
    -> department_id,
    -> employee_status,
    -> skills,
    -> gender,
    -> date_of_birth,
    -> joining_date,
    -> login_time,
    -> interview_datetime,
    -> birth_year,
    -> is_active,
    -> short_note,
    -> employee_description,
    -> training_history,
    -> employee_profile
    -> )
    -> VALUES
    -> ('EMP001', 'Rahul Sharma', 24, 0, 18, 52500.50, 85.5, 91.256789, 101, 'ACTIVE', 'PYTHON,MYSQL', 'MALE', '2002-04-15', '2025-01-10', '09:05:00', '2024-12-20 10:30:00', 2002, TRUE, 'Good performer', 'Python developer with good problem-solving skills.', 'Python and MySQL training completed.', 'Rahul is a junior software developer working on backend applications.'),
    -> ('EMP002', 'Priya Verma', 27, 1, 36, 78500.75, 92.7, 95.784321, 102, 'ACTIVE', 'JAVA,MYSQL', 'FEMALE', '1999-08-22', '2023-06-15', '09:12:00', '2023-05-25 11:00:00', 1999, TRUE, 'Team player', 'Experienced Java developer with strong database knowledge.', 'Java, SQL and communication training completed.', 'Priya works as a software engineer and handles backend development.'),
    -> ('EMP003', 'Amit Patel', 31, 2, 72, 95000.25, 88.4, 89.654321, 103, 'ON_LEAVE', 'JAVA,PYTHON,MYSQL', 'MALE', '1995-02-10', '2020-04-20', '09:20:00', '2020-03-15 14:00:00', 1995, FALSE, 'On leave', 'Senior developer with experience in enterprise applications.', 'Java, Python and database administration training completed.', 'Amit is a senior developer with extensive software development experience.'),
    -> ('EMP004', 'Neha Singh', 29, 0, 48, 68000.00, 90.2, 94.125678, 104, 'ACTIVE', 'PYTHON,REACT,AWS', 'FEMALE', '1997-11-05', '2022-03-12', '08:55:00', '2022-02-20 09:30:00', 1997, TRUE, 'Fast learner', 'Full stack developer experienced in modern web technologies.', 'Python, React and AWS training completed.', 'Neha develops web applications using Python, React and cloud technologies.'),
    -> ('EMP005', 'Vikas Gupta', 35, 2, 120, 125000.25, 95.8, 97.456789, 101, 'ACTIVE', 'JAVA,MYSQL,AWS', 'MALE', '1991-06-18', '2016-07-01', '09:02:00', '2016-06-10 15:00:00', 1991, TRUE, 'Excellent leader', 'Senior software engineer with strong leadership skills.', 'Advanced Java, AWS and database training completed.', 'Vikas leads a development team and manages enterprise-level applications.'),
    -> ('EMP006', 'Anjali Mehta', 42, 2, 180, 110500.50, 87.6, 90.875432, 105, 'INACTIVE', 'PYTHON,MYSQL', 'FEMALE', '1984-09-25', '2010-08-15', '09:30:00', '2010-07-20 10:00:00', 1984, FALSE, 'Experienced', 'Experienced professional with strong technical knowledge.', 'Python and database training completed.', 'Anjali has extensive experience in software development and database management.'),
    -> ('EMP007', 'Suresh Yadav', 55, 3, 240, 135000.75, 91.3, 93.654987, 106, 'RESIGNED', 'JAVA,MYSQL', 'MALE', '1971-03-12', '2006-05-10', '09:15:00', '2006-04-15 11:30:00', 1971, FALSE, 'Former employee', 'Experienced Java professional with many years of industry experience.', 'Java and database administration training completed.', 'Suresh worked as a senior Java developer before leaving the company.'),
    -> ('EMP008', 'Kavita Joshi', 26, 1, 30, 58500.00, 82.9, 88.456123, 102, 'ACTIVE', 'PYTHON,REACT', 'FEMALE', '2000-01-30', '2023-11-01', '09:08:00', '2023-10-10 13:30:00', 2000, TRUE, 'Creative developer', 'Frontend and Python developer with creative problem-solving skills.', 'Python, React and frontend training completed.', 'Kavita works on frontend applications and Python-based services.'),
    -> ('EMP009', 'Rohit Mishra', 33, 1, 96, 87500.50, 89.7, 92.345678, 103, 'ACTIVE', 'JAVA,PYTHON', 'MALE', '1993-07-14', '2018-09-05', '08:58:00', '2018-08-15 10:30:00', 1993, TRUE, 'Reliable employee', 'Software developer experienced in Java and Python.', 'Java, Python and API development training completed.', 'Rohit develops backend services and works with multiple programming languages.'),
    -> ('EMP010', 'Pooja Jain', 38, 2, 144, 102000.25, 94.1, 96.789123, 104, 'ON_LEAVE', 'PYTHON,MYSQL,AWS', 'FEMALE', '1988-12-03', '2013-02-18', '09:25:00', '2013-01-20 12:00:00', 1988, FALSE, 'On leave', 'Experienced cloud and backend developer.', 'Python, MySQL and AWS training completed.', 'Pooja works on backend systems and cloud-based infrastructure.'),
    -> ('EMP011', 'Manish Tiwari', 23, 0, 12, 45000.75, 79.8, 84.567891, 101, 'ACTIVE', 'PYTHON', 'MALE', '2003-05-19', '2025-07-01', '09:18:00', '2025-06-15 09:00:00', 2003, TRUE, 'New joiner', 'Junior Python developer starting his professional career.', 'Python fundamentals and SQL training completed.', 'Manish is a junior developer currently learning backend development.'),
    -> ('EMP012', 'Sneha Kapoor', 30, 1, 60, 73500.00, 86.5, 90.234567, 105, 'ACTIVE', 'JAVA,REACT,MYSQL', 'FEMALE', '1996-10-11', '2021-05-20', '09:10:00', '2021-04-25 14:30:00', 1996, TRUE, 'Good communicator', 'Full stack developer with strong communication skills.', 'Java, React and MySQL training completed.', 'Sneha develops full stack applications and coordinates with different teams.'),
    -> ('EMP013', 'Deepak Chouhan', 47, 3, 216, 118000.50, 93.6, 98.123456, 106, 'INACTIVE', 'JAVA,PYTHON,MYSQL,AWS', 'MALE', '1979-01-28', '2008-11-10', '09:40:00', '2008-10-15 11:00:00', 1979, FALSE, 'Highly experienced', 'Senior technology professional with extensive industry experience.', 'Advanced Java, Python, AWS and database training completed.', 'Deepak has worked on large-scale enterprise applications and technical projects.'),
    -> ('EMP014', 'Riya Sharma', 25, 0, 24, 56000.25, 84.7, 87.654321, 102, 'ACTIVE', 'PYTHON,REACT', 'FEMALE', '2001-09-16', '2024-02-05', '09:00:00', '2024-01-15 10:00:00', 2001, TRUE, 'Quick learner', 'Junior full stack developer with good learning ability.', 'Python, React and Git training completed.', 'Riya is developing web applications and improving her full stack skills.'),
    -> ('EMP015', 'Arjun Malviya', 52, 2, 264, 128500.75, 96.2, 99.345678, 103, 'RESIGNED', 'JAVA,MYSQL,AWS', 'MALE', '1974-04-07', '2004-06-01', '09:35:00', '2004-05-10 15:30:00', 1974, FALSE, 'Former manager', 'Senior technical professional with extensive management experience.', 'Java, MySQL, AWS and leadership training completed.', 'Arjun previously managed technical teams and large software projects.');

-- Query OK, 15 rows affected (0.01 sec)
-- Records: 15  Duplicates: 0  Warnings: 0










mysql> SELECT * FROM employees;

-- +-------------+---------------+----------------+------+--------------------+-------------------+-----------+-------------------+--------------------+---------------+-----------------+-----------------------+--------+---------------+--------------+------------+---------------------+------------+-----------+--------------------+-----------------------------------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------+---------------------+---------------------+
-- | employee_id | employee_code | employee_name  | age  | number_of_children | experience_months | salary    | performance_score | productivity_score | department_id | employee_status | skills                | gender | date_of_birth | joining_date | login_time | interview_datetime  | birth_year | is_active | short_note         | employee_description                                                  | training_history                                             | employee_profile                                                                 | created_at          | updated_at          |
-- +-------------+---------------+----------------+------+--------------------+-------------------+-----------+-------------------+--------------------+---------------+-----------------+-----------------------+--------+---------------+--------------+------------+---------------------+------------+-----------+--------------------+-----------------------------------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------+---------------------+---------------------+
-- |           1 | EMP001        | Rahul Sharma   |   24 |                  0 |                18 |  52500.50 |              85.5 |          91.256789 |           101 | ACTIVE          | PYTHON,MYSQL          | MALE   | 2002-04-15    | 2025-01-10   | 09:05:00   | 2024-12-20 10:30:00 |       2002 |         1 | Good performer     | Python developer with good problem-solving skills.                    | Python and MySQL training completed.                         | Rahul is a junior software developer working on backend applications.            | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           2 | EMP002        | Priya Verma    |   27 |                  1 |                36 |  78500.75 |              92.7 |          95.784321 |           102 | ACTIVE          | JAVA,MYSQL            | FEMALE | 1999-08-22    | 2023-06-15   | 09:12:00   | 2023-05-25 11:00:00 |       1999 |         1 | Team player        | Experienced Java developer with strong database knowledge.            | Java, SQL and communication training completed.              | Priya works as a software engineer and handles backend development.              | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           3 | EMP003        | Amit Patel     |   31 |                  2 |                72 |  95000.25 |              88.4 |          89.654321 |           103 | ON_LEAVE        | JAVA,PYTHON,MYSQL     | MALE   | 1995-02-10    | 2020-04-20   | 09:20:00   | 2020-03-15 14:00:00 |       1995 |         0 | On leave           | Senior developer with experience in enterprise applications.          | Java, Python and database administration training completed. | Amit is a senior developer with extensive software development experience.       | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           4 | EMP004        | Neha Singh     |   29 |                  0 |                48 |  68000.00 |              90.2 |          94.125678 |           104 | ACTIVE          | PYTHON,REACT,AWS      | FEMALE | 1997-11-05    | 2022-03-12   | 08:55:00   | 2022-02-20 09:30:00 |       1997 |         1 | Fast learner       | Full stack developer experienced in modern web technologies.          | Python, React and AWS training completed.                    | Neha develops web applications using Python, React and cloud technologies.       | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           5 | EMP005        | Vikas Gupta    |   35 |                  2 |               120 | 125000.25 |              95.8 |          97.456789 |           101 | ACTIVE          | JAVA,MYSQL,AWS        | MALE   | 1991-06-18    | 2016-07-01   | 09:02:00   | 2016-06-10 15:00:00 |       1991 |         1 | Excellent leader   | Senior software engineer with strong leadership skills.               | Advanced Java, AWS and database training completed.          | Vikas leads a development team and manages enterprise-level applications.        | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           6 | EMP006        | Anjali Mehta   |   42 |                  2 |               180 | 110500.50 |              87.6 |          90.875432 |           105 | INACTIVE        | PYTHON,MYSQL          | FEMALE | 1984-09-25    | 2010-08-15   | 09:30:00   | 2010-07-20 10:00:00 |       1984 |         0 | Experienced        | Experienced professional with strong technical knowledge.             | Python and database training completed.                      | Anjali has extensive experience in software development and database management. | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           7 | EMP007        | Suresh Yadav   |   55 |                  3 |               240 | 135000.75 |              91.3 |          93.654987 |           106 | RESIGNED        | JAVA,MYSQL            | MALE   | 1971-03-12    | 2006-05-10   | 09:15:00   | 2006-04-15 11:30:00 |       1971 |         0 | Former employee    | Experienced Java professional with many years of industry experience. | Java and database administration training completed.         | Suresh worked as a senior Java developer before leaving the company.             | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           8 | EMP008        | Kavita Joshi   |   26 |                  1 |                30 |  58500.00 |              82.9 |          88.456123 |           102 | ACTIVE          | PYTHON,REACT          | FEMALE | 2000-01-30    | 2023-11-01   | 09:08:00   | 2023-10-10 13:30:00 |       2000 |         1 | Creative developer | Frontend and Python developer with creative problem-solving skills.   | Python, React and frontend training completed.               | Kavita works on frontend applications and Python-based services.                 | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           9 | EMP009        | Rohit Mishra   |   33 |                  1 |                96 |  87500.50 |              89.7 |          92.345678 |           103 | ACTIVE          | JAVA,PYTHON           | MALE   | 1993-07-14    | 2018-09-05   | 08:58:00   | 2018-08-15 10:30:00 |       1993 |         1 | Reliable employee  | Software developer experienced in Java and Python.                    | Java, Python and API development training completed.         | Rohit develops backend services and works with multiple programming languages.   | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          10 | EMP010        | Pooja Jain     |   38 |                  2 |               144 | 102000.25 |              94.1 |          96.789123 |           104 | ON_LEAVE        | PYTHON,MYSQL,AWS      | FEMALE | 1988-12-03    | 2013-02-18   | 09:25:00   | 2013-01-20 12:00:00 |       1988 |         0 | On leave           | Experienced cloud and backend developer.                              | Python, MySQL and AWS training completed.                    | Pooja works on backend systems and cloud-based infrastructure.                   | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          11 | EMP011        | Manish Tiwari  |   23 |                  0 |                12 |  45000.75 |              79.8 |          84.567891 |           101 | ACTIVE          | PYTHON                | MALE   | 2003-05-19    | 2025-07-01   | 09:18:00   | 2025-06-15 09:00:00 |       2003 |         1 | New joiner         | Junior Python developer starting his professional career.             | Python fundamentals and SQL training completed.              | Manish is a junior developer currently learning backend development.             | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          12 | EMP012        | Sneha Kapoor   |   30 |                  1 |                60 |  73500.00 |              86.5 |          90.234567 |           105 | ACTIVE          | JAVA,MYSQL,REACT      | FEMALE | 1996-10-11    | 2021-05-20   | 09:10:00   | 2021-04-25 14:30:00 |       1996 |         1 | Good communicator  | Full stack developer with strong communication skills.                | Java, React and MySQL training completed.                    | Sneha develops full stack applications and coordinates with different teams.     | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          13 | EMP013        | Deepak Chouhan |   47 |                  3 |               216 | 118000.50 |              93.6 |          98.123456 |           106 | INACTIVE        | JAVA,PYTHON,MYSQL,AWS | MALE   | 1979-01-28    | 2008-11-10   | 09:40:00   | 2008-10-15 11:00:00 |       1979 |         0 | Highly experienced | Senior technology professional with extensive industry experience.    | Advanced Java, Python, AWS and database training completed.  | Deepak has worked on large-scale enterprise applications and technical projects. | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          14 | EMP014        | Riya Sharma    |   25 |                  0 |                24 |  56000.25 |              84.7 |          87.654321 |           102 | ACTIVE          | PYTHON,REACT          | FEMALE | 2001-09-16    | 2024-02-05   | 09:00:00   | 2024-01-15 10:00:00 |       2001 |         1 | Quick learner      | Junior full stack developer with good learning ability.               | Python, React and Git training completed.                    | Riya is developing web applications and improving her full stack skills.         | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          15 | EMP015        | Arjun Malviya  |   52 |                  2 |               264 | 128500.75 |              96.2 |          99.345678 |           103 | RESIGNED        | JAVA,MYSQL,AWS        | MALE   | 1974-04-07    | 2004-06-01   | 09:35:00   | 2004-05-10 15:30:00 |       1974 |         0 | Former manager     | Senior technical professional with extensive management experience.   | Java, MySQL, AWS and leadership training completed.          | Arjun previously managed technical teams and large software projects.            | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- +-------------+---------------+----------------+------+--------------------+-------------------+-----------+-------------------+--------------------+---------------+-----------------+-----------------------+--------+---------------+--------------+------------+---------------------+------------+-----------+--------------------+-----------------------------------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------+---------------------+---------------------+
-- 15 rows in set (0.00 sec)










mysql> INSERT INTO employees (employee_name) VALUES('umesh');

-- Query OK, 1 row affected (0.01 sec)









mysql> SELECT * FROM employees;

-- +-------------+---------------+----------------+------+--------------------+-------------------+-----------+-------------------+--------------------+---------------+-----------------+-----------------------+--------+---------------+--------------+------------+---------------------+------------+-----------+--------------------+-----------------------------------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------+---------------------+---------------------+
-- | employee_id | employee_code | employee_name  | age  | number_of_children | experience_months | salary    | performance_score | productivity_score | department_id | employee_status | skills                | gender | date_of_birth | joining_date | login_time | interview_datetime  | birth_year | is_active | short_note         | employee_description                                                  | training_history                                             | employee_profile                                                                 | created_at          | updated_at          |
-- +-------------+---------------+----------------+------+--------------------+-------------------+-----------+-------------------+--------------------+---------------+-----------------+-----------------------+--------+---------------+--------------+------------+---------------------+------------+-----------+--------------------+-----------------------------------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------+---------------------+---------------------+
-- |           1 | EMP001        | Rahul Sharma   |   24 |                  0 |                18 |  52500.50 |              85.5 |          91.256789 |           101 | ACTIVE          | PYTHON,MYSQL          | MALE   | 2002-04-15    | 2025-01-10   | 09:05:00   | 2024-12-20 10:30:00 |       2002 |         1 | Good performer     | Python developer with good problem-solving skills.                    | Python and MySQL training completed.                         | Rahul is a junior software developer working on backend applications.            | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           2 | EMP002        | Priya Verma    |   27 |                  1 |                36 |  78500.75 |              92.7 |          95.784321 |           102 | ACTIVE          | JAVA,MYSQL            | FEMALE | 1999-08-22    | 2023-06-15   | 09:12:00   | 2023-05-25 11:00:00 |       1999 |         1 | Team player        | Experienced Java developer with strong database knowledge.            | Java, SQL and communication training completed.              | Priya works as a software engineer and handles backend development.              | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           3 | EMP003        | Amit Patel     |   31 |                  2 |                72 |  95000.25 |              88.4 |          89.654321 |           103 | ON_LEAVE        | JAVA,PYTHON,MYSQL     | MALE   | 1995-02-10    | 2020-04-20   | 09:20:00   | 2020-03-15 14:00:00 |       1995 |         0 | On leave           | Senior developer with experience in enterprise applications.          | Java, Python and database administration training completed. | Amit is a senior developer with extensive software development experience.       | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           4 | EMP004        | Neha Singh     |   29 |                  0 |                48 |  68000.00 |              90.2 |          94.125678 |           104 | ACTIVE          | PYTHON,REACT,AWS      | FEMALE | 1997-11-05    | 2022-03-12   | 08:55:00   | 2022-02-20 09:30:00 |       1997 |         1 | Fast learner       | Full stack developer experienced in modern web technologies.          | Python, React and AWS training completed.                    | Neha develops web applications using Python, React and cloud technologies.       | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           5 | EMP005        | Vikas Gupta    |   35 |                  2 |               120 | 125000.25 |              95.8 |          97.456789 |           101 | ACTIVE          | JAVA,MYSQL,AWS        | MALE   | 1991-06-18    | 2016-07-01   | 09:02:00   | 2016-06-10 15:00:00 |       1991 |         1 | Excellent leader   | Senior software engineer with strong leadership skills.               | Advanced Java, AWS and database training completed.          | Vikas leads a development team and manages enterprise-level applications.        | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           6 | EMP006        | Anjali Mehta   |   42 |                  2 |               180 | 110500.50 |              87.6 |          90.875432 |           105 | INACTIVE        | PYTHON,MYSQL          | FEMALE | 1984-09-25    | 2010-08-15   | 09:30:00   | 2010-07-20 10:00:00 |       1984 |         0 | Experienced        | Experienced professional with strong technical knowledge.             | Python and database training completed.                      | Anjali has extensive experience in software development and database management. | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           7 | EMP007        | Suresh Yadav   |   55 |                  3 |               240 | 135000.75 |              91.3 |          93.654987 |           106 | RESIGNED        | JAVA,MYSQL            | MALE   | 1971-03-12    | 2006-05-10   | 09:15:00   | 2006-04-15 11:30:00 |       1971 |         0 | Former employee    | Experienced Java professional with many years of industry experience. | Java and database administration training completed.         | Suresh worked as a senior Java developer before leaving the company.             | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           8 | EMP008        | Kavita Joshi   |   26 |                  1 |                30 |  58500.00 |              82.9 |          88.456123 |           102 | ACTIVE          | PYTHON,REACT          | FEMALE | 2000-01-30    | 2023-11-01   | 09:08:00   | 2023-10-10 13:30:00 |       2000 |         1 | Creative developer | Frontend and Python developer with creative problem-solving skills.   | Python, React and frontend training completed.               | Kavita works on frontend applications and Python-based services.                 | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           9 | EMP009        | Rohit Mishra   |   33 |                  1 |                96 |  87500.50 |              89.7 |          92.345678 |           103 | ACTIVE          | JAVA,PYTHON           | MALE   | 1993-07-14    | 2018-09-05   | 08:58:00   | 2018-08-15 10:30:00 |       1993 |         1 | Reliable employee  | Software developer experienced in Java and Python.                    | Java, Python and API development training completed.         | Rohit develops backend services and works with multiple programming languages.   | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          10 | EMP010        | Pooja Jain     |   38 |                  2 |               144 | 102000.25 |              94.1 |          96.789123 |           104 | ON_LEAVE        | PYTHON,MYSQL,AWS      | FEMALE | 1988-12-03    | 2013-02-18   | 09:25:00   | 2013-01-20 12:00:00 |       1988 |         0 | On leave           | Experienced cloud and backend developer.                              | Python, MySQL and AWS training completed.                    | Pooja works on backend systems and cloud-based infrastructure.                   | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          11 | EMP011        | Manish Tiwari  |   23 |                  0 |                12 |  45000.75 |              79.8 |          84.567891 |           101 | ACTIVE          | PYTHON                | MALE   | 2003-05-19    | 2025-07-01   | 09:18:00   | 2025-06-15 09:00:00 |       2003 |         1 | New joiner         | Junior Python developer starting his professional career.             | Python fundamentals and SQL training completed.              | Manish is a junior developer currently learning backend development.             | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          12 | EMP012        | Sneha Kapoor   |   30 |                  1 |                60 |  73500.00 |              86.5 |          90.234567 |           105 | ACTIVE          | JAVA,MYSQL,REACT      | FEMALE | 1996-10-11    | 2021-05-20   | 09:10:00   | 2021-04-25 14:30:00 |       1996 |         1 | Good communicator  | Full stack developer with strong communication skills.                | Java, React and MySQL training completed.                    | Sneha develops full stack applications and coordinates with different teams.     | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          13 | EMP013        | Deepak Chouhan |   47 |                  3 |               216 | 118000.50 |              93.6 |          98.123456 |           106 | INACTIVE        | JAVA,PYTHON,MYSQL,AWS | MALE   | 1979-01-28    | 2008-11-10   | 09:40:00   | 2008-10-15 11:00:00 |       1979 |         0 | Highly experienced | Senior technology professional with extensive industry experience.    | Advanced Java, Python, AWS and database training completed.  | Deepak has worked on large-scale enterprise applications and technical projects. | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          14 | EMP014        | Riya Sharma    |   25 |                  0 |                24 |  56000.25 |              84.7 |          87.654321 |           102 | ACTIVE          | PYTHON,REACT          | FEMALE | 2001-09-16    | 2024-02-05   | 09:00:00   | 2024-01-15 10:00:00 |       2001 |         1 | Quick learner      | Junior full stack developer with good learning ability.               | Python, React and Git training completed.                    | Riya is developing web applications and improving her full stack skills.         | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          15 | EMP015        | Arjun Malviya  |   52 |                  2 |               264 | 128500.75 |              96.2 |          99.345678 |           103 | RESIGNED        | JAVA,MYSQL,AWS        | MALE   | 1974-04-07    | 2004-06-01   | 09:35:00   | 2004-05-10 15:30:00 |       1974 |         0 | Former manager     | Senior technical professional with extensive management experience.   | Java, MySQL, AWS and leadership training completed.          | Arjun previously managed technical teams and large software projects.            | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          16 | NULL          | umesh          | NULL |               NULL |              NULL |      NULL |              NULL |               NULL |          NULL | NULL            | NULL                  | NULL   | NULL          | NULL         | NULL       | NULL                |       NULL |      NULL | NULL               | NULL                                                                  | NULL                                                         | NULL                                                                             | 2026-08-20 00:31:24 | 2026-08-20 00:31:24 |
-- +-------------+---------------+----------------+------+--------------------+-------------------+-----------+-------------------+--------------------+---------------+-----------------+-----------------------+--------+---------------+--------------+------------+---------------------+------------+-----------+--------------------+-----------------------------------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------+---------------------+---------------------+
-- 16 rows in set (0.00 sec)









mysql> SELECT employee_name, created_at, updated_at FROM  employees WHERE employee_name = 'umesh';

-- +---------------+---------------------+---------------------+
-- | employee_name | created_at          | updated_at          |
-- +---------------+---------------------+---------------------+
-- | umesh         | 2026-08-20 00:31:24 | 2026-08-20 00:31:24 |
-- +---------------+---------------------+---------------------+
-- 1 row in set (0.00 sec)









mysql> UPDATE employees SET employee_name = 'umesh patidar' WHERE employee_name = 'umesh';

-- Query OK, 1 row affected (0.00 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0









mysql> SELECT employee_name, created_at, updated_at FROM  employees WHERE employee_name = 'umesh patidar';

-- +---------------+---------------------+---------------------+
-- | employee_name | created_at          | updated_at          |
-- +---------------+---------------------+---------------------+
-- | umesh patidar | 2026-08-20 00:31:24 | 2026-08-20 00:42:43 |
-- +---------------+---------------------+---------------------+
-- 1 row in set (0.00 sec)










mysql> ALTER TABLE employees ADD COLUMN phone_number VARCHAR(15), ADD COLUMN email VARCHAR(30), MODIFY COLUMN employee_name VARCHAR(50), MODIFY COLUMN employee_code CHAR(10), RENAME COLUMN short_note TO employee_note;

-- Query OK, 16 rows affected (0.05 sec)
-- Records: 16  Duplicates: 0  Warnings: 0










mysql> DESC employees;

-- +----------------------+-------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
-- | Field                | Type                                            | Null | Key | Default           | Extra                                         |
-- +----------------------+-------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
-- | employee_id          | int                                             | NO   | PRI | NULL              | auto_increment                                |
-- | employee_code        | char(10)                                        | YES  |     | NULL              |                                               |
-- | employee_name        | varchar(50)                                     | YES  |     | NULL              |                                               |
-- | age                  | tinyint unsigned                                | YES  |     | NULL              |                                               |
-- | number_of_children   | smallint                                        | YES  |     | NULL              |                                               |
-- | experience_months    | mediumint                                       | YES  |     | NULL              |                                               |
-- | salary               | decimal(10,2)                                   | YES  |     | NULL              |                                               |
-- | performance_score    | float                                           | YES  |     | NULL              |                                               |
-- | productivity_score   | double                                          | YES  |     | NULL              |                                               |
-- | department_id        | int                                             | YES  |     | NULL              |                                               |
-- | employee_status      | enum('ACTIVE','INACTIVE','ON_LEAVE','RESIGNED') | YES  |     | NULL              |                                               |
-- | skills               | set('JAVA','PYTHON','MYSQL','REACT','AWS')      | YES  |     | NULL              |                                               |
-- | gender               | enum('MALE','FEMALE')                           | YES  |     | NULL              |                                               |
-- | date_of_birth        | date                                            | YES  |     | NULL              |                                               |
-- | joining_date         | date                                            | YES  |     | NULL              |                                               |
-- | login_time           | time                                            | YES  |     | NULL              |                                               |
-- | interview_datetime   | datetime                                        | YES  |     | NULL              |                                               |
-- | birth_year           | year                                            | YES  |     | NULL              |                                               |
-- | is_active            | tinyint(1)                                      | YES  |     | NULL              |                                               |
-- | employee_note        | tinytext                                        | YES  |     | NULL              |                                               |
-- | employee_description | text                                            | YES  |     | NULL              |                                               |
-- | training_history     | mediumtext                                      | YES  |     | NULL              |                                               |
-- | employee_profile     | longtext                                        | YES  |     | NULL              |                                               |
-- | created_at           | timestamp                                       | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED                             |
-- | updated_at           | timestamp                                       | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
-- | phone_number         | varchar(15)                                     | YES  |     | NULL              |                                               |
-- | email                | varchar(30)                                     | YES  |     | NULL              |                                               |
-- +----------------------+-------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
-- 27 rows in set (0.00 sec)










mysql> SELECT * FROM employees;

-- +-------------+---------------+----------------+------+--------------------+-------------------+-----------+-------------------+--------------------+---------------+-----------------+-----------------------+--------+---------------+--------------+------------+---------------------+------------+-----------+--------------------+-----------------------------------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------+---------------------+---------------------+--------------+-------+
-- | employee_id | employee_code | employee_name  | age  | number_of_children | experience_months | salary    | performance_score | productivity_score | department_id | employee_status | skills                | gender | date_of_birth | joining_date | login_time | interview_datetime  | birth_year | is_active | employee_note      | employee_description                                                  | training_history                                             | employee_profile                                                                 | created_at          | updated_at          | phone_number | email |
-- +-------------+---------------+----------------+------+--------------------+-------------------+-----------+-------------------+--------------------+---------------+-----------------+-----------------------+--------+---------------+--------------+------------+---------------------+------------+-----------+--------------------+-----------------------------------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------+---------------------+---------------------+--------------+-------+
-- |           1 | EMP001        | Rahul Sharma   |   24 |                  0 |                18 |  52500.50 |              85.5 |          91.256789 |           101 | ACTIVE          | PYTHON,MYSQL          | MALE   | 2002-04-15    | 2025-01-10   | 09:05:00   | 2024-12-20 10:30:00 |       2002 |         1 | Good performer     | Python developer with good problem-solving skills.                    | Python and MySQL training completed.                         | Rahul is a junior software developer working on backend applications.            | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 | NULL         | NULL  |
-- |           2 | EMP002        | Priya Verma    |   27 |                  1 |                36 |  78500.75 |              92.7 |          95.784321 |           102 | ACTIVE          | JAVA,MYSQL            | FEMALE | 1999-08-22    | 2023-06-15   | 09:12:00   | 2023-05-25 11:00:00 |       1999 |         1 | Team player        | Experienced Java developer with strong database knowledge.            | Java, SQL and communication training completed.              | Priya works as a software engineer and handles backend development.              | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 | NULL         | NULL  |
-- |           3 | EMP003        | Amit Patel     |   31 |                  2 |                72 |  95000.25 |              88.4 |          89.654321 |           103 | ON_LEAVE        | JAVA,PYTHON,MYSQL     | MALE   | 1995-02-10    | 2020-04-20   | 09:20:00   | 2020-03-15 14:00:00 |       1995 |         0 | On leave           | Senior developer with experience in enterprise applications.          | Java, Python and database administration training completed. | Amit is a senior developer with extensive software development experience.       | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 | NULL         | NULL  |
-- |           4 | EMP004        | Neha Singh     |   29 |                  0 |                48 |  68000.00 |              90.2 |          94.125678 |           104 | ACTIVE          | PYTHON,REACT,AWS      | FEMALE | 1997-11-05    | 2022-03-12   | 08:55:00   | 2022-02-20 09:30:00 |       1997 |         1 | Fast learner       | Full stack developer experienced in modern web technologies.          | Python, React and AWS training completed.                    | Neha develops web applications using Python, React and cloud technologies.       | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 | NULL         | NULL  |
-- |           5 | EMP005        | Vikas Gupta    |   35 |                  2 |               120 | 125000.25 |              95.8 |          97.456789 |           101 | ACTIVE          | JAVA,MYSQL,AWS        | MALE   | 1991-06-18    | 2016-07-01   | 09:02:00   | 2016-06-10 15:00:00 |       1991 |         1 | Excellent leader   | Senior software engineer with strong leadership skills.               | Advanced Java, AWS and database training completed.          | Vikas leads a development team and manages enterprise-level applications.        | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 | NULL         | NULL  |
-- |           6 | EMP006        | Anjali Mehta   |   42 |                  2 |               180 | 110500.50 |              87.6 |          90.875432 |           105 | INACTIVE        | PYTHON,MYSQL          | FEMALE | 1984-09-25    | 2010-08-15   | 09:30:00   | 2010-07-20 10:00:00 |       1984 |         0 | Experienced        | Experienced professional with strong technical knowledge.             | Python and database training completed.                      | Anjali has extensive experience in software development and database management. | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 | NULL         | NULL  |
-- |           7 | EMP007        | Suresh Yadav   |   55 |                  3 |               240 | 135000.75 |              91.3 |          93.654987 |           106 | RESIGNED        | JAVA,MYSQL            | MALE   | 1971-03-12    | 2006-05-10   | 09:15:00   | 2006-04-15 11:30:00 |       1971 |         0 | Former employee    | Experienced Java professional with many years of industry experience. | Java and database administration training completed.         | Suresh worked as a senior Java developer before leaving the company.             | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 | NULL         | NULL  |
-- |           8 | EMP008        | Kavita Joshi   |   26 |                  1 |                30 |  58500.00 |              82.9 |          88.456123 |           102 | ACTIVE          | PYTHON,REACT          | FEMALE | 2000-01-30    | 2023-11-01   | 09:08:00   | 2023-10-10 13:30:00 |       2000 |         1 | Creative developer | Frontend and Python developer with creative problem-solving skills.   | Python, React and frontend training completed.               | Kavita works on frontend applications and Python-based services.                 | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 | NULL         | NULL  |
-- |           9 | EMP009        | Rohit Mishra   |   33 |                  1 |                96 |  87500.50 |              89.7 |          92.345678 |           103 | ACTIVE          | JAVA,PYTHON           | MALE   | 1993-07-14    | 2018-09-05   | 08:58:00   | 2018-08-15 10:30:00 |       1993 |         1 | Reliable employee  | Software developer experienced in Java and Python.                    | Java, Python and API development training completed.         | Rohit develops backend services and works with multiple programming languages.   | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 | NULL         | NULL  |
-- |          10 | EMP010        | Pooja Jain     |   38 |                  2 |               144 | 102000.25 |              94.1 |          96.789123 |           104 | ON_LEAVE        | PYTHON,MYSQL,AWS      | FEMALE | 1988-12-03    | 2013-02-18   | 09:25:00   | 2013-01-20 12:00:00 |       1988 |         0 | On leave           | Experienced cloud and backend developer.                              | Python, MySQL and AWS training completed.                    | Pooja works on backend systems and cloud-based infrastructure.                   | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 | NULL         | NULL  |
-- |          11 | EMP011        | Manish Tiwari  |   23 |                  0 |                12 |  45000.75 |              79.8 |          84.567891 |           101 | ACTIVE          | PYTHON                | MALE   | 2003-05-19    | 2025-07-01   | 09:18:00   | 2025-06-15 09:00:00 |       2003 |         1 | New joiner         | Junior Python developer starting his professional career.             | Python fundamentals and SQL training completed.              | Manish is a junior developer currently learning backend development.             | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 | NULL         | NULL  |
-- |          12 | EMP012        | Sneha Kapoor   |   30 |                  1 |                60 |  73500.00 |              86.5 |          90.234567 |           105 | ACTIVE          | JAVA,MYSQL,REACT      | FEMALE | 1996-10-11    | 2021-05-20   | 09:10:00   | 2021-04-25 14:30:00 |       1996 |         1 | Good communicator  | Full stack developer with strong communication skills.                | Java, React and MySQL training completed.                    | Sneha develops full stack applications and coordinates with different teams.     | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 | NULL         | NULL  |
-- |          13 | EMP013        | Deepak Chouhan |   47 |                  3 |               216 | 118000.50 |              93.6 |          98.123456 |           106 | INACTIVE        | JAVA,PYTHON,MYSQL,AWS | MALE   | 1979-01-28    | 2008-11-10   | 09:40:00   | 2008-10-15 11:00:00 |       1979 |         0 | Highly experienced | Senior technology professional with extensive industry experience.    | Advanced Java, Python, AWS and database training completed.  | Deepak has worked on large-scale enterprise applications and technical projects. | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 | NULL         | NULL  |
-- |          14 | EMP014        | Riya Sharma    |   25 |                  0 |                24 |  56000.25 |              84.7 |          87.654321 |           102 | ACTIVE          | PYTHON,REACT          | FEMALE | 2001-09-16    | 2024-02-05   | 09:00:00   | 2024-01-15 10:00:00 |       2001 |         1 | Quick learner      | Junior full stack developer with good learning ability.               | Python, React and Git training completed.                    | Riya is developing web applications and improving her full stack skills.         | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 | NULL         | NULL  |
-- |          15 | EMP015        | Arjun Malviya  |   52 |                  2 |               264 | 128500.75 |              96.2 |          99.345678 |           103 | RESIGNED        | JAVA,MYSQL,AWS        | MALE   | 1974-04-07    | 2004-06-01   | 09:35:00   | 2004-05-10 15:30:00 |       1974 |         0 | Former manager     | Senior technical professional with extensive management experience.   | Java, MySQL, AWS and leadership training completed.          | Arjun previously managed technical teams and large software projects.            | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 | NULL         | NULL  |
-- |          16 | NULL          | umesh patidar  | NULL |               NULL |              NULL |      NULL |              NULL |               NULL |          NULL | NULL            | NULL                  | NULL   | NULL          | NULL         | NULL       | NULL                |       NULL |      NULL | NULL               | NULL                                                                  | NULL                                                         | NULL                                                                             | 2026-08-20 00:31:24 | 2026-08-20 00:42:43 | NULL         | NULL  |
-- +-------------+---------------+----------------+------+--------------------+-------------------+-----------+-------------------+--------------------+---------------+-----------------+-----------------------+--------+---------------+--------------+------------+---------------------+------------+-----------+--------------------+-----------------------------------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------+---------------------+---------------------+--------------+-------+
-- 16 rows in set (0.00 sec)










mysql> ALTER TABLE employees DROP COLUMN email, DROP COLUMN phone_number;

-- Query OK, 0 rows affected (0.03 sec)
-- Records: 0  Duplicates: 0  Warnings: 0










mysql> DESC employees;

-- +----------------------+-------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
-- | Field                | Type                                            | Null | Key | Default           | Extra                                         |
-- +----------------------+-------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
-- | employee_id          | int                                             | NO   | PRI | NULL              | auto_increment                                |
-- | employee_code        | char(10)                                        | YES  |     | NULL              |                                               |
-- | employee_name        | varchar(50)                                     | YES  |     | NULL              |                                               |
-- | age                  | tinyint unsigned                                | YES  |     | NULL              |                                               |
-- | number_of_children   | smallint                                        | YES  |     | NULL              |                                               |
-- | experience_months    | mediumint                                       | YES  |     | NULL              |                                               |
-- | salary               | decimal(10,2)                                   | YES  |     | NULL              |                                               |
-- | performance_score    | float                                           | YES  |     | NULL              |                                               |
-- | productivity_score   | double                                          | YES  |     | NULL              |                                               |
-- | department_id        | int                                             | YES  |     | NULL              |                                               |
-- | employee_status      | enum('ACTIVE','INACTIVE','ON_LEAVE','RESIGNED') | YES  |     | NULL              |                                               |
-- | skills               | set('JAVA','PYTHON','MYSQL','REACT','AWS')      | YES  |     | NULL              |                                               |
-- | gender               | enum('MALE','FEMALE')                           | YES  |     | NULL              |                                               |
-- | date_of_birth        | date                                            | YES  |     | NULL              |                                               |
-- | joining_date         | date                                            | YES  |     | NULL              |                                               |
-- | login_time           | time                                            | YES  |     | NULL              |                                               |
-- | interview_datetime   | datetime                                        | YES  |     | NULL              |                                               |
-- | birth_year           | year                                            | YES  |     | NULL              |                                               |
-- | is_active            | tinyint(1)                                      | YES  |     | NULL              |                                               |
-- | employee_note        | tinytext                                        | YES  |     | NULL              |                                               |
-- | employee_description | text                                            | YES  |     | NULL              |                                               |
-- | training_history     | mediumtext                                      | YES  |     | NULL              |                                               |
-- | employee_profile     | longtext                                        | YES  |     | NULL              |                                               |
-- | created_at           | timestamp                                       | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED                             |
-- | updated_at           | timestamp                                       | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
-- +----------------------+-------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
-- 25 rows in set (0.00 sec)










mysql> SELECT * FROM employees;

-- +-------------+---------------+----------------+------+--------------------+-------------------+-----------+-------------------+--------------------+---------------+-----------------+-----------------------+--------+---------------+--------------+------------+---------------------+------------+-----------+--------------------+-----------------------------------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------+---------------------+---------------------+
-- | employee_id | employee_code | employee_name  | age  | number_of_children | experience_months | salary    | performance_score | productivity_score | department_id | employee_status | skills                | gender | date_of_birth | joining_date | login_time | interview_datetime  | birth_year | is_active | employee_note      | employee_description                                                  | training_history                                             | employee_profile                                                                 | created_at          | updated_at          |
-- +-------------+---------------+----------------+------+--------------------+-------------------+-----------+-------------------+--------------------+---------------+-----------------+-----------------------+--------+---------------+--------------+------------+---------------------+------------+-----------+--------------------+-----------------------------------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------+---------------------+---------------------+
-- |           1 | EMP001        | Rahul Sharma   |   24 |                  0 |                18 |  52500.50 |              85.5 |          91.256789 |           101 | ACTIVE          | PYTHON,MYSQL          | MALE   | 2002-04-15    | 2025-01-10   | 09:05:00   | 2024-12-20 10:30:00 |       2002 |         1 | Good performer     | Python developer with good problem-solving skills.                    | Python and MySQL training completed.                         | Rahul is a junior software developer working on backend applications.            | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           2 | EMP002        | Priya Verma    |   27 |                  1 |                36 |  78500.75 |              92.7 |          95.784321 |           102 | ACTIVE          | JAVA,MYSQL            | FEMALE | 1999-08-22    | 2023-06-15   | 09:12:00   | 2023-05-25 11:00:00 |       1999 |         1 | Team player        | Experienced Java developer with strong database knowledge.            | Java, SQL and communication training completed.              | Priya works as a software engineer and handles backend development.              | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           3 | EMP003        | Amit Patel     |   31 |                  2 |                72 |  95000.25 |              88.4 |          89.654321 |           103 | ON_LEAVE        | JAVA,PYTHON,MYSQL     | MALE   | 1995-02-10    | 2020-04-20   | 09:20:00   | 2020-03-15 14:00:00 |       1995 |         0 | On leave           | Senior developer with experience in enterprise applications.          | Java, Python and database administration training completed. | Amit is a senior developer with extensive software development experience.       | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           4 | EMP004        | Neha Singh     |   29 |                  0 |                48 |  68000.00 |              90.2 |          94.125678 |           104 | ACTIVE          | PYTHON,REACT,AWS      | FEMALE | 1997-11-05    | 2022-03-12   | 08:55:00   | 2022-02-20 09:30:00 |       1997 |         1 | Fast learner       | Full stack developer experienced in modern web technologies.          | Python, React and AWS training completed.                    | Neha develops web applications using Python, React and cloud technologies.       | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           5 | EMP005        | Vikas Gupta    |   35 |                  2 |               120 | 125000.25 |              95.8 |          97.456789 |           101 | ACTIVE          | JAVA,MYSQL,AWS        | MALE   | 1991-06-18    | 2016-07-01   | 09:02:00   | 2016-06-10 15:00:00 |       1991 |         1 | Excellent leader   | Senior software engineer with strong leadership skills.               | Advanced Java, AWS and database training completed.          | Vikas leads a development team and manages enterprise-level applications.        | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           6 | EMP006        | Anjali Mehta   |   42 |                  2 |               180 | 110500.50 |              87.6 |          90.875432 |           105 | INACTIVE        | PYTHON,MYSQL          | FEMALE | 1984-09-25    | 2010-08-15   | 09:30:00   | 2010-07-20 10:00:00 |       1984 |         0 | Experienced        | Experienced professional with strong technical knowledge.             | Python and database training completed.                      | Anjali has extensive experience in software development and database management. | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           7 | EMP007        | Suresh Yadav   |   55 |                  3 |               240 | 135000.75 |              91.3 |          93.654987 |           106 | RESIGNED        | JAVA,MYSQL            | MALE   | 1971-03-12    | 2006-05-10   | 09:15:00   | 2006-04-15 11:30:00 |       1971 |         0 | Former employee    | Experienced Java professional with many years of industry experience. | Java and database administration training completed.         | Suresh worked as a senior Java developer before leaving the company.             | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           8 | EMP008        | Kavita Joshi   |   26 |                  1 |                30 |  58500.00 |              82.9 |          88.456123 |           102 | ACTIVE          | PYTHON,REACT          | FEMALE | 2000-01-30    | 2023-11-01   | 09:08:00   | 2023-10-10 13:30:00 |       2000 |         1 | Creative developer | Frontend and Python developer with creative problem-solving skills.   | Python, React and frontend training completed.               | Kavita works on frontend applications and Python-based services.                 | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           9 | EMP009        | Rohit Mishra   |   33 |                  1 |                96 |  87500.50 |              89.7 |          92.345678 |           103 | ACTIVE          | JAVA,PYTHON           | MALE   | 1993-07-14    | 2018-09-05   | 08:58:00   | 2018-08-15 10:30:00 |       1993 |         1 | Reliable employee  | Software developer experienced in Java and Python.                    | Java, Python and API development training completed.         | Rohit develops backend services and works with multiple programming languages.   | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          10 | EMP010        | Pooja Jain     |   38 |                  2 |               144 | 102000.25 |              94.1 |          96.789123 |           104 | ON_LEAVE        | PYTHON,MYSQL,AWS      | FEMALE | 1988-12-03    | 2013-02-18   | 09:25:00   | 2013-01-20 12:00:00 |       1988 |         0 | On leave           | Experienced cloud and backend developer.                              | Python, MySQL and AWS training completed.                    | Pooja works on backend systems and cloud-based infrastructure.                   | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          11 | EMP011        | Manish Tiwari  |   23 |                  0 |                12 |  45000.75 |              79.8 |          84.567891 |           101 | ACTIVE          | PYTHON                | MALE   | 2003-05-19    | 2025-07-01   | 09:18:00   | 2025-06-15 09:00:00 |       2003 |         1 | New joiner         | Junior Python developer starting his professional career.             | Python fundamentals and SQL training completed.              | Manish is a junior developer currently learning backend development.             | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          12 | EMP012        | Sneha Kapoor   |   30 |                  1 |                60 |  73500.00 |              86.5 |          90.234567 |           105 | ACTIVE          | JAVA,MYSQL,REACT      | FEMALE | 1996-10-11    | 2021-05-20   | 09:10:00   | 2021-04-25 14:30:00 |       1996 |         1 | Good communicator  | Full stack developer with strong communication skills.                | Java, React and MySQL training completed.                    | Sneha develops full stack applications and coordinates with different teams.     | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          13 | EMP013        | Deepak Chouhan |   47 |                  3 |               216 | 118000.50 |              93.6 |          98.123456 |           106 | INACTIVE        | JAVA,PYTHON,MYSQL,AWS | MALE   | 1979-01-28    | 2008-11-10   | 09:40:00   | 2008-10-15 11:00:00 |       1979 |         0 | Highly experienced | Senior technology professional with extensive industry experience.    | Advanced Java, Python, AWS and database training completed.  | Deepak has worked on large-scale enterprise applications and technical projects. | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          14 | EMP014        | Riya Sharma    |   25 |                  0 |                24 |  56000.25 |              84.7 |          87.654321 |           102 | ACTIVE          | PYTHON,REACT          | FEMALE | 2001-09-16    | 2024-02-05   | 09:00:00   | 2024-01-15 10:00:00 |       2001 |         1 | Quick learner      | Junior full stack developer with good learning ability.               | Python, React and Git training completed.                    | Riya is developing web applications and improving her full stack skills.         | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          15 | EMP015        | Arjun Malviya  |   52 |                  2 |               264 | 128500.75 |              96.2 |          99.345678 |           103 | RESIGNED        | JAVA,MYSQL,AWS        | MALE   | 1974-04-07    | 2004-06-01   | 09:35:00   | 2004-05-10 15:30:00 |       1974 |         0 | Former manager     | Senior technical professional with extensive management experience.   | Java, MySQL, AWS and leadership training completed.          | Arjun previously managed technical teams and large software projects.            | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          16 | NULL          | umesh patidar  | NULL |               NULL |              NULL |      NULL |              NULL |               NULL |          NULL | NULL            | NULL                  | NULL   | NULL          | NULL         | NULL       | NULL                |       NULL |      NULL | NULL               | NULL                                                                  | NULL                                                         | NULL                                                                             | 2026-08-20 00:31:24 | 2026-08-20 00:42:43 |
-- +-------------+---------------+----------------+------+--------------------+-------------------+-----------+-------------------+--------------------+---------------+-----------------+-----------------------+--------+---------------+--------------+------------+---------------------+------------+-----------+--------------------+-----------------------------------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------+---------------------+---------------------+
-- 16 rows in set (0.00 sec)










mysql> CREATE TABLE employee_documents (document_id INT);

-- Query OK, 0 rows affected (0.02 sec)









mysql> DESC employee_documents;

-- +-------------+------+------+-----+---------+-------+
-- | Field       | Type | Null | Key | Default | Extra |
-- +-------------+------+------+-----+---------+-------+
-- | document_id | int  | YES  |     | NULL    |       |
-- +-------------+------+------+-----+---------+-------+
-- 1 row in set (0.00 sec)









mysql> ALTER TABLE employee_documents MODIFY document_id INT AUTO_INCREMENT PRIMARY KEY;

-- Query OK, 0 rows affected (0.05 sec)
-- Records: 0  Duplicates: 0  Warnings: 0









mysql> DESC employee_documents;

-- +-------------+------+------+-----+---------+----------------+
-- | Field       | Type | Null | Key | Default | Extra          |
-- +-------------+------+------+-----+---------+----------------+
-- | document_id | int  | NO   | PRI | NULL    | auto_increment |
-- +-------------+------+------+-----+---------+----------------+
-- 1 row in set (0.00 sec)









mysql> CREATE TABLE employee_backup AS SELECT * FROM employees;

-- Query OK, 16 rows affected (0.03 sec)
-- Records: 16  Duplicates: 0  Warnings: 0










mysql> DESC employee_backup;

-- +----------------------+-------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
-- | Field                | Type                                            | Null | Key | Default           | Extra                                         |
-- +----------------------+-------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
-- | employee_id          | int                                             | NO   |     | 0                 |                                               |
-- | employee_code        | char(10)                                        | YES  |     | NULL              |                                               |
-- | employee_name        | varchar(50)                                     | YES  |     | NULL              |                                               |
-- | age                  | tinyint unsigned                                | YES  |     | NULL              |                                               |
-- | number_of_children   | smallint                                        | YES  |     | NULL              |                                               |
-- | experience_months    | mediumint                                       | YES  |     | NULL              |                                               |
-- | salary               | decimal(10,2)                                   | YES  |     | NULL              |                                               |
-- | performance_score    | float                                           | YES  |     | NULL              |                                               |
-- | productivity_score   | double                                          | YES  |     | NULL              |                                               |
-- | department_id        | int                                             | YES  |     | NULL              |                                               |
-- | employee_status      | enum('ACTIVE','INACTIVE','ON_LEAVE','RESIGNED') | YES  |     | NULL              |                                               |
-- | skills               | set('JAVA','PYTHON','MYSQL','REACT','AWS')      | YES  |     | NULL              |                                               |
-- | gender               | enum('MALE','FEMALE')                           | YES  |     | NULL              |                                               |
-- | date_of_birth        | date                                            | YES  |     | NULL              |                                               |
-- | joining_date         | date                                            | YES  |     | NULL              |                                               |
-- | login_time           | time                                            | YES  |     | NULL              |                                               |
-- | interview_datetime   | datetime                                        | YES  |     | NULL              |                                               |
-- | birth_year           | year                                            | YES  |     | NULL              |                                               |
-- | is_active            | tinyint(1)                                      | YES  |     | NULL              |                                               |
-- | employee_note        | tinytext                                        | YES  |     | NULL              |                                               |
-- | employee_description | text                                            | YES  |     | NULL              |                                               |
-- | training_history     | mediumtext                                      | YES  |     | NULL              |                                               |
-- | employee_profile     | longtext                                        | YES  |     | NULL              |                                               |
-- | created_at           | timestamp                                       | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED                             |
-- | updated_at           | timestamp                                       | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
-- +----------------------+-------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
-- 25 rows in set (0.00 sec)











mysql> SELECT * FROM employee_backup;

-- +-------------+---------------+----------------+------+--------------------+-------------------+-----------+-------------------+--------------------+---------------+-----------------+-----------------------+--------+---------------+--------------+------------+---------------------+------------+-----------+--------------------+-----------------------------------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------+---------------------+---------------------+
-- | employee_id | employee_code | employee_name  | age  | number_of_children | experience_months | salary    | performance_score | productivity_score | department_id | employee_status | skills                | gender | date_of_birth | joining_date | login_time | interview_datetime  | birth_year | is_active | employee_note      | employee_description                                                  | training_history                                             | employee_profile                                                                 | created_at          | updated_at          |
-- +-------------+---------------+----------------+------+--------------------+-------------------+-----------+-------------------+--------------------+---------------+-----------------+-----------------------+--------+---------------+--------------+------------+---------------------+------------+-----------+--------------------+-----------------------------------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------+---------------------+---------------------+
-- |           1 | EMP001        | Rahul Sharma   |   24 |                  0 |                18 |  52500.50 |              85.5 |          91.256789 |           101 | ACTIVE          | PYTHON,MYSQL          | MALE   | 2002-04-15    | 2025-01-10   | 09:05:00   | 2024-12-20 10:30:00 |       2002 |         1 | Good performer     | Python developer with good problem-solving skills.                    | Python and MySQL training completed.                         | Rahul is a junior software developer working on backend applications.            | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           2 | EMP002        | Priya Verma    |   27 |                  1 |                36 |  78500.75 |              92.7 |          95.784321 |           102 | ACTIVE          | JAVA,MYSQL            | FEMALE | 1999-08-22    | 2023-06-15   | 09:12:00   | 2023-05-25 11:00:00 |       1999 |         1 | Team player        | Experienced Java developer with strong database knowledge.            | Java, SQL and communication training completed.              | Priya works as a software engineer and handles backend development.              | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           3 | EMP003        | Amit Patel     |   31 |                  2 |                72 |  95000.25 |              88.4 |          89.654321 |           103 | ON_LEAVE        | JAVA,PYTHON,MYSQL     | MALE   | 1995-02-10    | 2020-04-20   | 09:20:00   | 2020-03-15 14:00:00 |       1995 |         0 | On leave           | Senior developer with experience in enterprise applications.          | Java, Python and database administration training completed. | Amit is a senior developer with extensive software development experience.       | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           4 | EMP004        | Neha Singh     |   29 |                  0 |                48 |  68000.00 |              90.2 |          94.125678 |           104 | ACTIVE          | PYTHON,REACT,AWS      | FEMALE | 1997-11-05    | 2022-03-12   | 08:55:00   | 2022-02-20 09:30:00 |       1997 |         1 | Fast learner       | Full stack developer experienced in modern web technologies.          | Python, React and AWS training completed.                    | Neha develops web applications using Python, React and cloud technologies.       | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           5 | EMP005        | Vikas Gupta    |   35 |                  2 |               120 | 125000.25 |              95.8 |          97.456789 |           101 | ACTIVE          | JAVA,MYSQL,AWS        | MALE   | 1991-06-18    | 2016-07-01   | 09:02:00   | 2016-06-10 15:00:00 |       1991 |         1 | Excellent leader   | Senior software engineer with strong leadership skills.               | Advanced Java, AWS and database training completed.          | Vikas leads a development team and manages enterprise-level applications.        | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           6 | EMP006        | Anjali Mehta   |   42 |                  2 |               180 | 110500.50 |              87.6 |          90.875432 |           105 | INACTIVE        | PYTHON,MYSQL          | FEMALE | 1984-09-25    | 2010-08-15   | 09:30:00   | 2010-07-20 10:00:00 |       1984 |         0 | Experienced        | Experienced professional with strong technical knowledge.             | Python and database training completed.                      | Anjali has extensive experience in software development and database management. | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           7 | EMP007        | Suresh Yadav   |   55 |                  3 |               240 | 135000.75 |              91.3 |          93.654987 |           106 | RESIGNED        | JAVA,MYSQL            | MALE   | 1971-03-12    | 2006-05-10   | 09:15:00   | 2006-04-15 11:30:00 |       1971 |         0 | Former employee    | Experienced Java professional with many years of industry experience. | Java and database administration training completed.         | Suresh worked as a senior Java developer before leaving the company.             | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           8 | EMP008        | Kavita Joshi   |   26 |                  1 |                30 |  58500.00 |              82.9 |          88.456123 |           102 | ACTIVE          | PYTHON,REACT          | FEMALE | 2000-01-30    | 2023-11-01   | 09:08:00   | 2023-10-10 13:30:00 |       2000 |         1 | Creative developer | Frontend and Python developer with creative problem-solving skills.   | Python, React and frontend training completed.               | Kavita works on frontend applications and Python-based services.                 | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |           9 | EMP009        | Rohit Mishra   |   33 |                  1 |                96 |  87500.50 |              89.7 |          92.345678 |           103 | ACTIVE          | JAVA,PYTHON           | MALE   | 1993-07-14    | 2018-09-05   | 08:58:00   | 2018-08-15 10:30:00 |       1993 |         1 | Reliable employee  | Software developer experienced in Java and Python.                    | Java, Python and API development training completed.         | Rohit develops backend services and works with multiple programming languages.   | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          10 | EMP010        | Pooja Jain     |   38 |                  2 |               144 | 102000.25 |              94.1 |          96.789123 |           104 | ON_LEAVE        | PYTHON,MYSQL,AWS      | FEMALE | 1988-12-03    | 2013-02-18   | 09:25:00   | 2013-01-20 12:00:00 |       1988 |         0 | On leave           | Experienced cloud and backend developer.                              | Python, MySQL and AWS training completed.                    | Pooja works on backend systems and cloud-based infrastructure.                   | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          11 | EMP011        | Manish Tiwari  |   23 |                  0 |                12 |  45000.75 |              79.8 |          84.567891 |           101 | ACTIVE          | PYTHON                | MALE   | 2003-05-19    | 2025-07-01   | 09:18:00   | 2025-06-15 09:00:00 |       2003 |         1 | New joiner         | Junior Python developer starting his professional career.             | Python fundamentals and SQL training completed.              | Manish is a junior developer currently learning backend development.             | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          12 | EMP012        | Sneha Kapoor   |   30 |                  1 |                60 |  73500.00 |              86.5 |          90.234567 |           105 | ACTIVE          | JAVA,MYSQL,REACT      | FEMALE | 1996-10-11    | 2021-05-20   | 09:10:00   | 2021-04-25 14:30:00 |       1996 |         1 | Good communicator  | Full stack developer with strong communication skills.                | Java, React and MySQL training completed.                    | Sneha develops full stack applications and coordinates with different teams.     | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          13 | EMP013        | Deepak Chouhan |   47 |                  3 |               216 | 118000.50 |              93.6 |          98.123456 |           106 | INACTIVE        | JAVA,PYTHON,MYSQL,AWS | MALE   | 1979-01-28    | 2008-11-10   | 09:40:00   | 2008-10-15 11:00:00 |       1979 |         0 | Highly experienced | Senior technology professional with extensive industry experience.    | Advanced Java, Python, AWS and database training completed.  | Deepak has worked on large-scale enterprise applications and technical projects. | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          14 | EMP014        | Riya Sharma    |   25 |                  0 |                24 |  56000.25 |              84.7 |          87.654321 |           102 | ACTIVE          | PYTHON,REACT          | FEMALE | 2001-09-16    | 2024-02-05   | 09:00:00   | 2024-01-15 10:00:00 |       2001 |         1 | Quick learner      | Junior full stack developer with good learning ability.               | Python, React and Git training completed.                    | Riya is developing web applications and improving her full stack skills.         | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          15 | EMP015        | Arjun Malviya  |   52 |                  2 |               264 | 128500.75 |              96.2 |          99.345678 |           103 | RESIGNED        | JAVA,MYSQL,AWS        | MALE   | 1974-04-07    | 2004-06-01   | 09:35:00   | 2004-05-10 15:30:00 |       1974 |         0 | Former manager     | Senior technical professional with extensive management experience.   | Java, MySQL, AWS and leadership training completed.          | Arjun previously managed technical teams and large software projects.            | 2026-08-20 00:22:18 | 2026-08-20 00:22:18 |
-- |          16 | NULL          | umesh patidar  | NULL |               NULL |              NULL |      NULL |              NULL |               NULL |          NULL | NULL            | NULL                  | NULL   | NULL          | NULL         | NULL       | NULL                |       NULL |      NULL | NULL               | NULL                                                                  | NULL                                                         | NULL                                                                             | 2026-08-20 00:31:24 | 2026-08-20 00:42:43 |
-- +-------------+---------------+----------------+------+--------------------+-------------------+-----------+-------------------+--------------------+---------------+-----------------+-----------------------+--------+---------------+--------------+------------+---------------------+------------+-----------+--------------------+-----------------------------------------------------------------------+--------------------------------------------------------------+----------------------------------------------------------------------------------+---------------------+---------------------+
-- 16 rows in set (0.00 sec)











mysql> CREATE TABLE employee_test (emp_id INT PRIMARY KEY AUTO_INCREMENT, emp_name VARCHAR(50), depatrment VARCHAR(50));

-- Query OK, 0 rows affected (0.05 sec)









mysql> INSERT INTO employee_test (emp_name, depatrment) VALUES ('umesh', 'IT'), ('kushal', 'HR');

-- Query OK, 2 rows affected (0.00 sec)
-- Records: 2  Duplicates: 0  Warnings: 0











mysql> SELECT * FROM employee_test;

-- +--------+----------+------------+
-- | emp_id | emp_name | depatrment |
-- +--------+----------+------------+
-- |      1 | umesh    | IT         |
-- |      2 | kushal   | HR         |
-- +--------+----------+------------+
-- 2 rows in set (0.00 sec)










mysql> ALTER TABLE employee_test RENAME COLUMN depatrment TO department;

-- Query OK, 0 rows affected (0.01 sec)
-- Records: 0  Duplicates: 0  Warnings: 0










mysql> SELECT * FROM employee_test;

-- +--------+----------+------------+
-- | emp_id | emp_name | department |
-- +--------+----------+------------+
-- |      1 | umesh    | IT         |
-- |      2 | kushal   | HR         |
-- +--------+----------+------------+
-- 2 rows in set (0.00 sec)












mysql> DESC employee_test;

-- +------------+-------------+------+-----+---------+----------------+
-- | Field      | Type        | Null | Key | Default | Extra          |
-- +------------+-------------+------+-----+---------+----------------+
-- | emp_id     | int         | NO   | PRI | NULL    | auto_increment |
-- | emp_name   | varchar(50) | YES  |     | NULL    |                |
-- | department | varchar(50) | YES  |     | NULL    |                |
-- +------------+-------------+------+-----+---------+----------------+
-- 3 rows in set (0.00 sec)










mysql> TRUNCATE employee_test;

-- Query OK, 0 rows affected (0.03 sec)









mysql> SELECT * FROM employee_test;

-- Empty set (0.00 sec)










mysql> DESC employee_test;

-- +------------+-------------+------+-----+---------+----------------+
-- | Field      | Type        | Null | Key | Default | Extra          |
-- +------------+-------------+------+-----+---------+----------------+
-- | emp_id     | int         | NO   | PRI | NULL    | auto_increment |
-- | emp_name   | varchar(50) | YES  |     | NULL    |                |
-- | department | varchar(50) | YES  |     | NULL    |                |
-- +------------+-------------+------+-----+---------+----------------+
-- 3 rows in set (0.00 sec)











-- mysql> DROP TABLE employee_test;

Query OK, 0 rows affected (0.01 sec)










mysql> SHOW TABLES;

-- +-------------------------------+
-- | Tables_in_employee_management |
-- +-------------------------------+
-- | employee_backup               |
-- | employee_documents            |
-- | employees                     |
-- +-------------------------------+
-- 3 rows in set (0.01 sec)











mysql> DROP TABLE employee_documents;

-- Query OK, 0 rows affected (0.01 sec)









mysql> SHOW TABLES;

-- +-------------------------------+
-- | Tables_in_employee_management |
-- +-------------------------------+
-- | employee_backup               |
-- | employees                     |
-- +-------------------------------+
-- 2 rows in set (0.00 sec)










mysql> SHOW DATABASES;

-- +---------------------+
-- | Database            |
-- +---------------------+
-- | batch18             |
-- | company_db          |
-- | employee_management |
-- | information_schema  |
-- | mysql               |
-- | performance_schema  |
-- | school_db           |
-- | shop_db             |
-- | sys                 |
-- +---------------------+
-- 9 rows in set (0.00 sec)











mysql> SHOW TABLES;

-- +-------------------------------+
-- | Tables_in_employee_management |
-- +-------------------------------+
-- | employee_backup               |
-- | employees                     |
-- +-------------------------------+
-- 2 rows in set (0.00 sec)










mysql> DESC employees;

-- +----------------------+-------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
-- | Field                | Type                                            | Null | Key | Default           | Extra                                         |
-- +----------------------+-------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
-- | employee_id          | int                                             | NO   | PRI | NULL              | auto_increment                                |
-- | employee_code        | char(10)                                        | YES  |     | NULL              |                                               |
-- | employee_name        | varchar(50)                                     | YES  |     | NULL              |                                               |
-- | age                  | tinyint unsigned                                | YES  |     | NULL              |                                               |
-- | number_of_children   | smallint                                        | YES  |     | NULL              |                                               |
-- | experience_months    | mediumint                                       | YES  |     | NULL              |                                               |
-- | salary               | decimal(10,2)                                   | YES  |     | NULL              |                                               |
-- | performance_score    | float                                           | YES  |     | NULL              |                                               |
-- | productivity_score   | double                                          | YES  |     | NULL              |                                               |
-- | department_id        | int                                             | YES  |     | NULL              |                                               |
-- | employee_status      | enum('ACTIVE','INACTIVE','ON_LEAVE','RESIGNED') | YES  |     | NULL              |                                               |
-- | skills               | set('JAVA','PYTHON','MYSQL','REACT','AWS')      | YES  |     | NULL              |                                               |
-- | gender               | enum('MALE','FEMALE')                           | YES  |     | NULL              |                                               |
-- | date_of_birth        | date                                            | YES  |     | NULL              |                                               |
-- | joining_date         | date                                            | YES  |     | NULL              |                                               |
-- | login_time           | time                                            | YES  |     | NULL              |                                               |
-- | interview_datetime   | datetime                                        | YES  |     | NULL              |                                               |
-- | birth_year           | year                                            | YES  |     | NULL              |                                               |
-- | is_active            | tinyint(1)                                      | YES  |     | NULL              |                                               |
-- | employee_note        | tinytext                                        | YES  |     | NULL              |                                               |
-- | employee_description | text                                            | YES  |     | NULL              |                                               |
-- | training_history     | mediumtext                                      | YES  |     | NULL              |                                               |
-- | employee_profile     | longtext                                        | YES  |     | NULL              |                                               |
-- | created_at           | timestamp                                       | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED                             |
-- | updated_at           | timestamp                                       | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
-- +----------------------+-------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
-- 25 rows in set (0.00 sec)










mysql> SHOW CREATE TABLE employees;

-- +-----------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
-- | Table     | Create Table                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
-- +-----------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
-- | employees | CREATE TABLE `employees` (
--   `employee_id` int NOT NULL AUTO_INCREMENT,
--   `employee_code` char(10) DEFAULT NULL,
--   `employee_name` varchar(50) DEFAULT NULL,
--   `age` tinyint unsigned DEFAULT NULL,
--   `number_of_children` smallint DEFAULT NULL,
--   `experience_months` mediumint DEFAULT NULL,
--   `salary` decimal(10,2) DEFAULT NULL,
--   `performance_score` float DEFAULT NULL,
--   `productivity_score` double DEFAULT NULL,
--   `department_id` int DEFAULT NULL,
--   `employee_status` enum('ACTIVE','INACTIVE','ON_LEAVE','RESIGNED') DEFAULT NULL,
--   `skills` set('JAVA','PYTHON','MYSQL','REACT','AWS') DEFAULT NULL,
--   `gender` enum('MALE','FEMALE') DEFAULT NULL,
--   `date_of_birth` date DEFAULT NULL,
--   `joining_date` date DEFAULT NULL,
--   `login_time` time DEFAULT NULL,
--   `interview_datetime` datetime DEFAULT NULL,
--   `birth_year` year DEFAULT NULL,
--   `is_active` tinyint(1) DEFAULT NULL,
--   `employee_note` tinytext,
--   `employee_description` text,
--   `training_history` mediumtext,
--   `employee_profile` longtext,
--   `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   PRIMARY KEY (`employee_id`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
-- +-----------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
-- 1 row in set (0.00 sec)
