
2.
Student Performance Analysis
Use the following students table for the queries.

NOTE: use your friends names in the given table.
Table: students
student_id name class subject marks exam_date
1 John 10 Math 85 2023-02-10
2 Alice 10 Science 78 2023-03-15
3 Bob 9 Math 92 2023-04-20
4 David 9 Science 80 2023-05-25
5 Eve 10 Math 88 2023-06-30
6 Frank 9 Science 75 2023-07-10
7 Grace 10 Math 90 2023-08-20
8 Hank 9 Math 85 2023-09-15
9 Ivy 10 Science 82 2023-10-10
10 Jack 9 Science 79 2023-11-05
Questions
Find the total number of students in each class.
Find the highest marks scored in Math.
Find the average marks in each subject.
Find the total number of students who scored above 80.
Find the number of students who took the exam in each month.
Find the subject where students scored the highest average marks.
Find the student who scored the lowest marks in Science.
Find the number of students in each class who scored more than 85.
Find the average marks for each subject where the average is above 80.
Find the student who scored the highest marks overall.










mysql> CREATE TABLE students(
    -> student_id INT PRIMARY KEY AUTO_INCREMENT,
    -> name VARCHAR(20),
    -> class INT,
    -> subject VARCHAR(30),
    -> marks INT,
    -> exam_date DATE );

-- Query OK, 0 rows affected (0.02 sec)




mysql> DESC students;

-- +------------+-------------+------+-----+---------+----------------+
-- | Field      | Type        | Null | Key | Default | Extra          |
-- +------------+-------------+------+-----+---------+----------------+
-- | student_id | int         | NO   | PRI | NULL    | auto_increment |
-- | name       | varchar(20) | YES  |     | NULL    |                |
-- | class      | int         | YES  |     | NULL    |                |
-- | subject    | varchar(30) | YES  |     | NULL    |                |
-- | marks      | int         | YES  |     | NULL    |                |
-- | exam_date  | date        | YES  |     | NULL    |                |
-- +------------+-------------+------+-----+---------+----------------+
-- 6 rows in set (0.00 sec)




mysql> INSERT INTO students( name, class, subject, marks, exam_date)
    -> VALUES
    -> ('John', 10, 'Math', 85, '2023-02-10'),
    -> ('Alice', 10, 'Science', 78, '2023-03-15'),
    -> ('Bob', 9, 'Math', 92, '2023-04-20'),
    -> ('David', 9, 'Science', 80, '2023-05-25'),
    -> ('Eve', 10, 'Math', 88, '2023-06-30'),
    -> ('Frank', 9, 'Science', 75, '2023-07-10'),
    -> ('Grace', 10, 'Math', 90, '2023-08-20'),
    -> ('Hank', 9, 'Math', 85, '2023-09-15'),
    -> ('Ivy', 10, 'Science', 82, '2023-10-10'),
    -> ('Jack', 9, 'Science', 79, '2023-11-05');

-- Query OK, 10 rows affected (0.01 sec)
-- Records: 10  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM students;

-- +------------+-------+-------+---------+-------+------------+
-- | student_id | name  | class | subject | marks | exam_date  |
-- +------------+-------+-------+---------+-------+------------+
-- |          1 | John  |    10 | Math    |    85 | 2023-02-10 |
-- |          2 | Alice |    10 | Science |    78 | 2023-03-15 |
-- |          3 | Bob   |     9 | Math    |    92 | 2023-04-20 |
-- |          4 | David |     9 | Science |    80 | 2023-05-25 |
-- |          5 | Eve   |    10 | Math    |    88 | 2023-06-30 |
-- |          6 | Frank |     9 | Science |    75 | 2023-07-10 |
-- |          7 | Grace |    10 | Math    |    90 | 2023-08-20 |
-- |          8 | Hank  |     9 | Math    |    85 | 2023-09-15 |
-- |          9 | Ivy   |    10 | Science |    82 | 2023-10-10 |
-- |         10 | Jack  |     9 | Science |    79 | 2023-11-05 |
-- +------------+-------+-------+---------+-------+------------+
-- 10 rows in set (0.00 sec)




mysql> SELECT class, COUNT(*) FROM students GROUP BY class;

-- +-------+----------+
-- | class | COUNT(*) |
-- +-------+----------+
-- |    10 |        5 |
-- |     9 |        5 |
-- +-------+----------+
-- 2 rows in set (0.00 sec)




mysql> SELECT subject, MAX(marks) FROM students WHERE subject = 'Math';

-- +---------+------------+
-- | subject | MAX(marks) |
-- +---------+------------+
-- | Math    |         92 |
-- +---------+------------+
-- 1 row in set (0.00 sec)




mysql> SELECT subject, AVG(marks) FROM students GROUP BY subject;

-- +---------+------------+
-- | subject | AVG(marks) |
-- +---------+------------+
-- | Math    |    88.0000 |
-- | Science |    78.8000 |
-- +---------+------------+




mysql> SELECT COUNT(*) FROM students WHERE marks > 80;

-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        6 |
-- +----------+
-- 1 row in set (0.00 sec)




mysql> SELECT MONTHNAME(exam_date), COUNT(*) FROM students GROUP BY MONTHNAME(exam_date);

-- +----------------------+----------+
-- | MONTHNAME(exam_date) | COUNT(*) |
-- +----------------------+----------+
-- | February             |        1 |
-- | March                |        1 |
-- | April                |        1 |
-- | May                  |        1 |
-- | June                 |        1 |
-- | July                 |        1 |
-- | August               |        1 |
-- | September            |        1 |
-- | October              |        1 |
-- | November             |        1 |
-- +----------------------+----------+
-- 10 rows in set (0.00 sec)




mysql> SELECT subject, AVG(marks) FROM students GROUP BY subject ORDER BY AVG(marks) DESC LIMIT 1;

-- +---------+------------+
-- | subject | AVG(marks) |
-- +---------+------------+
-- | Math    |    88.0000 |
-- +---------+------------+
-- 1 row in set (0.00 sec)




mysql> SELECT name, subject, marks FROM students WHERE subject = 'Science' ORDER BY marks LIMIT 1;

-- +-------+---------+-------+
-- | name  | subject | marks |
-- +-------+---------+-------+
-- | Frank | Science |    75 |
-- +-------+---------+-------+
-- 1 row in set (0.00 sec)




mysql> SELECT class, COUNT(*) FROM students WHERE marks > 85 GROUP BY class;

-- +-------+----------+
-- | class | COUNT(*) |
-- +-------+----------+
-- |     9 |        1 |
-- |    10 |        2 |
-- +-------+----------+
-- 2 rows in set (0.00 sec)




mysql> SELECT  name, AVG(marks) FROM students GROUP BY name HAVING AVG(marks) > 80;

-- +-------+------------+
-- | name  | AVG(marks) |
-- +-------+------------+
-- | John  |    85.0000 |
-- | Bob   |    92.0000 |
-- | Eve   |    88.0000 |
-- | Grace |    90.0000 |
-- | Hank  |    85.0000 |
-- | Ivy   |    82.0000 |
-- +-------+------------+
-- 6 rows in set (0.00 sec)




mysql> SELECT name, MAX(marks) FROM students GROUP BY name ORDER BY MAX(marks) DESC LIMIT 1;

-- +------+------------+
-- | name | MAX(marks) |
-- +------+------------+
-- | Bob  |         92 |
-- +------+------------+
-- 1 row in set (0.00 sec)
