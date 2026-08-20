`
Assignment 2 — Library Management System

Design and create a Library Management System database in MySQL.

In this assignment, you have to think and decide everything.

You will be given only the requirements. You must decide:

Database name
Table names
Column names
Data types
Primary keys
Auto-increment
Default values
Appropriate constraints/data types
Scenario

A college wants to develop a Library Management System to maintain information about books, students, and book transactions.

The system should store the following information:

1. Books

The library wants to maintain:

Unique identification of every book
Book title
Author name
ISBN number
Price
Number of available copies
Book category
Publication date
Whether the book is currently available
A short description of the book

2. Students

The library wants to maintain:

Unique identification of every student
Student name
Enrollment/registration number
Age
Gender
Date of birth
Contact number
Email
Whether the student is currently active
Student registration date

3. Book Issue/Return

Whenever a student takes a book from the library, the system should record:

Which student took the book
Which book was issued
Issue date
Expected return date
Actual return date
Fine amount, if applicable
Whether the book has been returned
Any additional remarks
Date and time when the transaction was created
Requirements
Decide how many tables are required.
Decide the name of each table.
Decide all column names yourself.
Select the most appropriate MySQL data type for every column.
Decide which columns should be PRIMARY KEY.
Decide where AUTO_INCREMENT is appropriate.
Decide where UNSIGNED is appropriate.
Decide which fields should use ENUM, BOOLEAN, DATE, DATETIME, DECIMAL, etc.
Create all tables using DDL.
Insert at least 10 books, 10 students and 15 issue/return transactions.
`


























mysql> CREATE DATABASE Library_Management;

-- Query OK, 1 row affected (0.02 sec)








mysql> USE Library_Management;

-- Database changed








mysql> SHOW TABLES;

-- Empty set (0.00 sec)








mysql> CREATE TABLE books( id INT PRIMARY KEY AUTO_INCREMENT, title TINYTEXT, author VARCHAR(50), isbn VARCHAR(13), price DECIMAL(10,2), available_cpoies INT, category VARCHAR(40), publication_date DATE, availability ENUM('YESS', 'NOO'), description TEXT);

-- Query OK, 0 rows affected (0.07 sec)








mysql> DESC books;

-- +------------------+--------------------+------+-----+---------+----------------+
-- | Field            | Type               | Null | Key | Default | Extra          |
-- +------------------+--------------------+------+-----+---------+----------------+
-- | id               | int                | NO   | PRI | NULL    | auto_increment |
-- | title            | tinytext           | YES  |     | NULL    |                |
-- | author           | varchar(50)        | YES  |     | NULL    |                |
-- | isbn             | varchar(13)        | YES  |     | NULL    |                |
-- | price            | decimal(10,2)      | YES  |     | NULL    |                |
-- | available_cpoies | int                | YES  |     | NULL    |                |
-- | category         | varchar(40)        | YES  |     | NULL    |                |
-- | publication_date | date               | YES  |     | NULL    |                |
-- | availability     | enum('YESS','NOO') | YES  |     | NULL    |                |
-- | description      | text               | YES  |     | NULL    |                |
-- +------------------+--------------------+------+-----+---------+----------------+
-- 10 rows in set (0.01 sec)








mysql> INSERT INTO books(title, author, isbn, price, available_cpoies, category, publication_date, availability, description) VALUES
    -> ('Python Crash Course', 'Eric Matthes', '9781593279288', 2499.00, 12, 'Programming', '2023-05-10', 'YESS', 'A practical introduction to Python programming for beginners.'),
    -> ('Clean Code', 'Robert Martin', '9780132350884', 3200.00, 8, 'Programming', '2022-08-15', 'YESS', 'A guide to writing clean, readable, and maintainable code.'),
    -> ('The Alchemist', 'Paulo Coelho', '9780062315007', 599.00, 20, 'Fiction', '2021-01-20', 'YESS', 'A young shepherd follows his dream and discovers his purpose.'),
    -> ('Atomic Habits', 'James Clear', '9780735211292', 799.00, 15, 'Self Help', '2018-10-16', 'YESS', 'A practical book about building good habits and breaking bad ones.'),
    -> ('Database System Concepts', 'Abraham Silberschatz', '9780078022159', 4500.00, 5, 'Database', '2020-06-12', 'YESS', 'A comprehensive introduction to database systems and concepts.'),
    -> ('The Pragmatic Programmer', 'David Thomas', '9780135957059', 3800.00, 0, 'Programming', '2019-09-13', 'NOO', 'A practical guide to becoming a better and more effective programmer.'),
    -> ('Rich Dad Poor Dad', 'Robert Kiyosaki', '9781612681139', 699.00, 10, 'Finance', '2020-03-05', 'YESS', 'A personal finance book about money, investing, and financial thinking.'),
    -> ('Harry Potter and the Sorcerers Stone', 'J.K. Rowling', '9780590353427', 899.00, 7, 'Fantasy', '1998-09-01', 'YESS', 'A young wizard begins his magical journey at Hogwarts.'),
    -> ('Artificial Intelligence', 'Stuart Russell', '9780134610993', 5200.00, 3, 'Artificial Intelligence', '2021-04-25', 'YESS', 'An introduction to the principles and techniques of artificial intelligence.'),
    -> ('Think and Grow Rich', 'Napoleon Hill', '9781585424337', 549.00, 0, 'Self Help', '2017-11-10', 'NOO', 'A classic book about mindset, success, and achieving personal goals.');

-- Query OK, 10 rows affected (0.01 sec)
-- Records: 10  Duplicates: 0  Warnings: 0








mysql> SELECT * FROM books;

-- +----+--------------------------------------+----------------------+---------------+---------+------------------+-------------------------+------------------+--------------+------------------------------------------------------------------------------+
-- | id | title                                | author               | isbn          | price   | available_cpoies | category                | publication_date | availability | description                                                                  |
-- +----+--------------------------------------+----------------------+---------------+---------+------------------+-------------------------+------------------+--------------+------------------------------------------------------------------------------+
-- |  1 | Python Crash Course                  | Eric Matthes         | 9781593279288 | 2499.00 |               12 | Programming             | 2023-05-10       | YESS         | A practical introduction to Python programming for beginners.                |
-- |  2 | Clean Code                           | Robert Martin        | 9780132350884 | 3200.00 |                8 | Programming             | 2022-08-15       | YESS         | A guide to writing clean, readable, and maintainable code.                   |
-- |  3 | The Alchemist                        | Paulo Coelho         | 9780062315007 |  599.00 |               20 | Fiction                 | 2021-01-20       | YESS         | A young shepherd follows his dream and discovers his purpose.                |
-- |  4 | Atomic Habits                        | James Clear          | 9780735211292 |  799.00 |               15 | Self Help               | 2018-10-16       | YESS         | A practical book about building good habits and breaking bad ones.           |
-- |  5 | Database System Concepts             | Abraham Silberschatz | 9780078022159 | 4500.00 |                5 | Database                | 2020-06-12       | YESS         | A comprehensive introduction to database systems and concepts.               |
-- |  6 | The Pragmatic Programmer             | David Thomas         | 9780135957059 | 3800.00 |                0 | Programming             | 2019-09-13       | NOO          | A practical guide to becoming a better and more effective programmer.        |
-- |  7 | Rich Dad Poor Dad                    | Robert Kiyosaki      | 9781612681139 |  699.00 |               10 | Finance                 | 2020-03-05       | YESS         | A personal finance book about money, investing, and financial thinking.      |
-- |  8 | Harry Potter and the Sorcerers Stone | J.K. Rowling         | 9780590353427 |  899.00 |                7 | Fantasy                 | 1998-09-01       | YESS         | A young wizard begins his magical journey at Hogwarts.                       |
-- |  9 | Artificial Intelligence              | Stuart Russell       | 9780134610993 | 5200.00 |                3 | Artificial Intelligence | 2021-04-25       | YESS         | An introduction to the principles and techniques of artificial intelligence. |
-- | 10 | Think and Grow Rich                  | Napoleon Hill        | 9781585424337 |  549.00 |                0 | Self Help               | 2017-11-10       | NOO          | A classic book about mindset, success, and achieving personal goals.         |
-- +----+--------------------------------------+----------------------+---------------+---------+------------------+-------------------------+------------------+--------------+------------------------------------------------------------------------------+
-- 10 rows in set (0.00 sec)










































mysql> CREATE TABLE students( id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(50), reg_no CHAR(10), age TINYINT UNSIGNED, gender ENUM('Male', 'Female'), dob DATE, contact_no VARCHAR(15), email VARCHAR(100), status ENUM('yes', 'no'), reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

-- Query OK, 0 rows affected (0.03 sec)








mysql> DESC students;

-- +------------+-----------------------+------+-----+-------------------+-------------------+
-- | Field      | Type                  | Null | Key | Default           | Extra             |
-- +------------+-----------------------+------+-----+-------------------+-------------------+
-- | id         | int                   | NO   | PRI | NULL              | auto_increment    |
-- | name       | varchar(50)           | YES  |     | NULL              |                   |
-- | reg_no     | char(10)              | YES  |     | NULL              |                   |
-- | age        | tinyint unsigned      | YES  |     | NULL              |                   |
-- | gender     | enum('Male','Female') | YES  |     | NULL              |                   |
-- | dob        | date                  | YES  |     | NULL              |                   |
-- | contact_no | varchar(15)           | YES  |     | NULL              |                   |
-- | email      | varchar(100)          | YES  |     | NULL              |                   |
-- | status     | enum('yes','no')      | YES  |     | NULL              |                   |
-- | reg_date   | timestamp             | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
-- +------------+-----------------------+------+-----+-------------------+-------------------+
-- 10 rows in set (0.00 sec)








mysql> INSERT INTO students( name, reg_no, age, gender, dob, contact_no, email, status) VALUES
    -> ('Rahul Sharma', 'REG000001', 21, 'Male', '2005-04-10', '9876543210', 'rahul@gmail.com', 'yes'),
    -> ('Priya Verma', 'REG000002', 20, 'Female', '2006-02-15', '9876543211', 'priya@gmail.com', 'yes'),
    -> ('Aman Patel', 'REG000003', 22, 'Male', '2004-08-20', '9876543212', 'aman@gmail.com', 'yes'),
    -> ('Neha Singh', 'REG000004', 21, 'Female', '2005-11-05', '9876543213', 'neha@gmail.com', 'yes'),
    -> ('Rohit Gupta', 'REG000005', 23, 'Male', '2003-06-18', '9876543214', 'rohit@gmail.com', 'no'),
    -> ('Anjali Mehta', 'REG000006', 20, 'Female', '2006-01-25', '9876543215', 'anjali@gmail.com', 'yes'),
    -> ('Vikas Jain', 'REG000007', 22, 'Male', '2004-12-12', '9876543216', 'vikas@gmail.com', 'yes'),
    -> ('Pooja Yadav', 'REG000008', 21, 'Female', '2005-09-30', '9876543217', 'pooja@gmail.com', 'no'),
    -> ('Karan Joshi', 'REG000009', 24, 'Male', '2002-03-14', '9876543218', 'karan@gmail.com', 'yes'),
    -> ('Sneha Sharma', 'REG000010', 19, 'Female', '2007-07-22', '9876543219', 'sneha@gmail.com', 'yes');

-- Query OK, 10 rows affected (0.01 sec)
-- Records: 10  Duplicates: 0  Warnings: 0








mysql> SELECT * FROM students;

-- +----+--------------+-----------+------+--------+------------+------------+------------------+--------+---------------------+
-- | id | name         | reg_no    | age  | gender | dob        | contact_no | email            | status | reg_date            |
-- +----+--------------+-----------+------+--------+------------+------------+------------------+--------+---------------------+
-- |  1 | Rahul Sharma | REG000001 |   21 | Male   | 2005-04-10 | 9876543210 | rahul@gmail.com  | yes    | 2026-08-21 04:00:21 |
-- |  2 | Priya Verma  | REG000002 |   20 | Female | 2006-02-15 | 9876543211 | priya@gmail.com  | yes    | 2026-08-21 04:00:21 |
-- |  3 | Aman Patel   | REG000003 |   22 | Male   | 2004-08-20 | 9876543212 | aman@gmail.com   | yes    | 2026-08-21 04:00:21 |
-- |  4 | Neha Singh   | REG000004 |   21 | Female | 2005-11-05 | 9876543213 | neha@gmail.com   | yes    | 2026-08-21 04:00:21 |
-- |  5 | Rohit Gupta  | REG000005 |   23 | Male   | 2003-06-18 | 9876543214 | rohit@gmail.com  | no     | 2026-08-21 04:00:21 |
-- |  6 | Anjali Mehta | REG000006 |   20 | Female | 2006-01-25 | 9876543215 | anjali@gmail.com | yes    | 2026-08-21 04:00:21 |
-- |  7 | Vikas Jain   | REG000007 |   22 | Male   | 2004-12-12 | 9876543216 | vikas@gmail.com  | yes    | 2026-08-21 04:00:21 |
-- |  8 | Pooja Yadav  | REG000008 |   21 | Female | 2005-09-30 | 9876543217 | pooja@gmail.com  | no     | 2026-08-21 04:00:21 |
-- |  9 | Karan Joshi  | REG000009 |   24 | Male   | 2002-03-14 | 9876543218 | karan@gmail.com  | yes    | 2026-08-21 04:00:21 |
-- | 10 | Sneha Sharma | REG000010 |   19 | Female | 2007-07-22 | 9876543219 | sneha@gmail.com  | yes    | 2026-08-21 04:00:21 |
-- +----+--------------+-----------+------+--------+------------+------------+------------------+--------+---------------------+
-- 10 rows in set (0.00 sec)





































mysql> CREATE TABLE book_transactions (
    ->     transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     student_id INT,
    ->     book_id INT,
    ->     issue_date DATE,
    ->     expected_return_date DATE,
    ->     actual_return_date DATE,
    ->     fine_amount DECIMAL(8,2),
    ->     returned BOOLEAN,
    ->     remarks VARCHAR(255),
    ->     created_at DATETIME DEFAULT CURRENT_TIMESTAMP
    -> );

-- Query OK, 0 rows affected (0.02 sec)








mysql> DESC book_transactions;

-- +----------------------+--------------+------+-----+-------------------+-------------------+
-- | Field                | Type         | Null | Key | Default           | Extra             |
-- +----------------------+--------------+------+-----+-------------------+-------------------+
-- | transaction_id       | int          | NO   | PRI | NULL              | auto_increment    |
-- | student_id           | int          | YES  |     | NULL              |                   |
-- | book_id              | int          | YES  |     | NULL              |                   |
-- | issue_date           | date         | YES  |     | NULL              |                   |
-- | expected_return_date | date         | YES  |     | NULL              |                   |
-- | actual_return_date   | date         | YES  |     | NULL              |                   |
-- | fine_amount          | decimal(8,2) | YES  |     | NULL              |                   |
-- | returned             | tinyint(1)   | YES  |     | NULL              |                   |
-- | remarks              | varchar(255) | YES  |     | NULL              |                   |
-- | created_at           | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
-- +----------------------+--------------+------+-----+-------------------+-------------------+
-- 10 rows in set (0.00 sec)








mysql> INSERT INTO book_transactions
    -> (student_id, book_id, issue_date, expected_return_date, actual_return_date, fine_amount, returned, remarks)
    -> VALUES
    -> (1, 1, '2026-07-01', '2026-07-15', '2026-07-14', 0.00, 1, 'Book returned on time'),
    -> (2, 2, '2026-07-03', '2026-07-17', '2026-07-20', 30.00, 1, 'Returned late'),
    -> (3, 3, '2026-07-05', '2026-07-19', '2026-07-18', 0.00, 1, 'Book returned before due date'),
    -> (4, 4, '2026-07-08', '2026-07-22', NULL, 0.00, 0, 'Book not returned yet'),
    -> (5, 5, '2026-07-10', '2026-07-24', '2026-07-24', 0.00, 1, 'Returned on due date'),
    -> (6, 6, '2026-07-12', '2026-07-26', '2026-07-30', 40.00, 1, 'Returned four days late'),
    -> (7, 7, '2026-07-15', '2026-07-29', NULL, 0.00, 0, 'Currently issued'),
    -> (8, 8, '2026-07-18', '2026-08-01', '2026-08-01', 0.00, 1, 'Returned on time'),
    -> (9, 9, '2026-07-20', '2026-08-03', '2026-08-06', 30.00, 1, 'Returned late'),
    -> (10, 10, '2026-07-22', '2026-08-05', NULL, 0.00, 0, 'Book is still with student'),
    -> (1, 3, '2026-07-25', '2026-08-08', '2026-08-07', 0.00, 1, 'Returned early'),
    -> (2, 5, '2026-07-28', '2026-08-11', '2026-08-15', 40.00, 1, 'Returned four days late'),
    -> (3, 7, '2026-08-01', '2026-08-15', NULL, 0.00, 0, 'Not returned yet'),
    -> (4, 9, '2026-08-05', '2026-08-19', '2026-08-18', 0.00, 1, 'Returned before due date'),
    -> (5, 2, '2026-08-08', '2026-08-22', NULL, 0.00, 0, 'Currently issued');

-- Query OK, 15 rows affected (0.01 sec)
-- Records: 15  Duplicates: 0  Warnings: 0








mysql> SELECT * FROM book_transactions;

-- +----------------+------------+---------+------------+----------------------+--------------------+-------------+----------+-------------------------------+---------------------+
-- | transaction_id | student_id | book_id | issue_date | expected_return_date | actual_return_date | fine_amount | returned | remarks                       | created_at          |
-- +----------------+------------+---------+------------+----------------------+--------------------+-------------+----------+-------------------------------+---------------------+
-- |              1 |          1 |       1 | 2026-07-01 | 2026-07-15           | 2026-07-14         |        0.00 |        1 | Book returned on time         | 2026-08-21 04:12:18 |
-- |              2 |          2 |       2 | 2026-07-03 | 2026-07-17           | 2026-07-20         |       30.00 |        1 | Returned late                 | 2026-08-21 04:12:18 |
-- |              3 |          3 |       3 | 2026-07-05 | 2026-07-19           | 2026-07-18         |        0.00 |        1 | Book returned before due date | 2026-08-21 04:12:18 |
-- |              4 |          4 |       4 | 2026-07-08 | 2026-07-22           | NULL               |        0.00 |        0 | Book not returned yet         | 2026-08-21 04:12:18 |
-- |              5 |          5 |       5 | 2026-07-10 | 2026-07-24           | 2026-07-24         |        0.00 |        1 | Returned on due date          | 2026-08-21 04:12:18 |
-- |              6 |          6 |       6 | 2026-07-12 | 2026-07-26           | 2026-07-30         |       40.00 |        1 | Returned four days late       | 2026-08-21 04:12:18 |
-- |              7 |          7 |       7 | 2026-07-15 | 2026-07-29           | NULL               |        0.00 |        0 | Currently issued              | 2026-08-21 04:12:18 |
-- |              8 |          8 |       8 | 2026-07-18 | 2026-08-01           | 2026-08-01         |        0.00 |        1 | Returned on time              | 2026-08-21 04:12:18 |
-- |              9 |          9 |       9 | 2026-07-20 | 2026-08-03           | 2026-08-06         |       30.00 |        1 | Returned late                 | 2026-08-21 04:12:18 |
-- |             10 |         10 |      10 | 2026-07-22 | 2026-08-05           | NULL               |        0.00 |        0 | Book is still with student    | 2026-08-21 04:12:18 |
-- |             11 |          1 |       3 | 2026-07-25 | 2026-08-08           | 2026-08-07         |        0.00 |        1 | Returned early                | 2026-08-21 04:12:18 |
-- |             12 |          2 |       5 | 2026-07-28 | 2026-08-11           | 2026-08-15         |       40.00 |        1 | Returned four days late       | 2026-08-21 04:12:18 |
-- |             13 |          3 |       7 | 2026-08-01 | 2026-08-15           | NULL               |        0.00 |        0 | Not returned yet              | 2026-08-21 04:12:18 |
-- |             14 |          4 |       9 | 2026-08-05 | 2026-08-19           | 2026-08-18         |        0.00 |        1 | Returned before due date      | 2026-08-21 04:12:18 |
-- |             15 |          5 |       2 | 2026-08-08 | 2026-08-22           | NULL               |        0.00 |        0 | Currently issued              | 2026-08-21 04:12:18 |
-- +----------------+------------+---------+------------+----------------------+--------------------+-------------+----------+-------------------------------+---------------------+
-- 15 rows in set (0.00 sec)
