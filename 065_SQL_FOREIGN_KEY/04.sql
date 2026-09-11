`
QNO 4:
A university wants to track students' exam results. If a student is deleted, their results should also be deleted.
Tasks:
Create a Students table:
StudentID (PRIMARY KEY, AUTO_INCREMENT)
StudentName (NOT NULL)
Create an Exams table:
ExamID (PRIMARY KEY, AUTO_INCREMENT)
SubjectName (NOT NULL, UNIQUE)
Create a Results table:
ResultID (PRIMARY KEY, AUTO_INCREMENT)
StudentID (FOREIGN key)
ExamID (FOREIGN KEY)
Score (NOT NULL, CHECK Score BETWEEN 0 AND 100)
Insert sample data (at least 3 students, 3 exams, and 5 results).
Delete a student and check if their results are removed automatically.
Update an exam’s subject name and observe the effect.
`







mysql> CREATE TABLE students4(studentid INT PRIMARY KEY AUTO_INCREMENT, studentname VARCHAR(20) NOT NULL);

-- Query OK, 0 rows affected (0.02 sec)




mysql> DESC students4;

-- +-------------+-------------+------+-----+---------+----------------+
-- | Field       | Type        | Null | Key | Default | Extra          |
-- +-------------+-------------+------+-----+---------+----------------+
-- | studentid   | int         | NO   | PRI | NULL    | auto_increment |
-- | studentname | varchar(20) | NO   |     | NULL    |                |
-- +-------------+-------------+------+-----+---------+----------------+
-- 2 rows in set (0.00 sec)




mysql> CREATE TABLE exams4( examid INT PRIMARY KEY AUTO_INCREMENT, subjectname VARCHAR(20) NOT NULL UNIQUE);

-- Query OK, 0 rows affected (0.04 sec)




mysql> DESC exams4;

-- +-------------+-------------+------+-----+---------+----------------+
-- | Field       | Type        | Null | Key | Default | Extra          |
-- +-------------+-------------+------+-----+---------+----------------+
-- | examid      | int         | NO   | PRI | NULL    | auto_increment |
-- | subjectname | varchar(20) | NO   | UNI | NULL    |                |
-- +-------------+-------------+------+-----+---------+----------------+
-- 2 rows in set (0.00 sec)




mysql> CREATE TABLE results4( resultid INT PRIMARY KEY AUTO_INCREMENT, studentid INT, examid INT, score DECIMAL(10,2) NOT NULL CHECK( score BETWEEN 0 AND 100), FOREIGN KEY(studentid) REFERENCES students4(studentid) ON DELETE CASCADE,  FOREIGN KEY(examid) REFERENCES exams4(examid) ON DELETE CASCADE);

-- Query OK, 0 rows affected (0.05 sec)




mysql> DESC results4;

-- +-----------+---------------+------+-----+---------+----------------+
-- | Field     | Type          | Null | Key | Default | Extra          |
-- +-----------+---------------+------+-----+---------+----------------+
-- | resultid  | int           | NO   | PRI | NULL    | auto_increment |
-- | studentid | int           | YES  | MUL | NULL    |                |
-- | examid    | int           | YES  | MUL | NULL    |                |
-- | score     | decimal(10,2) | NO   |     | NULL    |                |
-- +-----------+---------------+------+-----+---------+----------------+
-- 4 rows in set (0.00 sec)




mysql> INSERT INTO students4 VALUES(501, 'Rahul Sharma'), (502, 'Priya Patel'), (503, 'Aman Verma');

-- Query OK, 3 rows affected (0.01 sec)
-- Records: 3  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM students4;

-- +-----------+--------------+
-- | studentid | studentname  |
-- +-----------+--------------+
-- |       501 | Rahul Sharma |
-- |       502 | Priya Patel  |
-- |       503 | Aman Verma   |
-- +-----------+--------------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO exams4 VALUES(801, 'Python'), (802, 'MySQL'), (803, 'DBMS');

-- Query OK, 3 rows affected (0.01 sec)
-- Records: 3  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM exams4;

-- +--------+-------------+
-- | examid | subjectname |
-- +--------+-------------+
-- |    803 | DBMS        |
-- |    802 | MySQL       |
-- |    801 | Python      |
-- +--------+-------------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO results4 VALUES (1, 501, 801, 85), (2, 501, 802, 78), (3, 502, 801, 92), (4, 502, 803, 88), (5, 503, 802, 74);

-- Query OK, 5 rows affected (0.01 sec)
-- Records: 5  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM results4;

-- +----------+-----------+--------+-------+
-- | resultid | studentid | examid | score |
-- +----------+-----------+--------+-------+
-- |        1 |       501 |    801 | 85.00 |
-- |        2 |       501 |    802 | 78.00 |
-- |        3 |       502 |    801 | 92.00 |
-- |        4 |       502 |    803 | 88.00 |
-- |        5 |       503 |    802 | 74.00 |
-- +----------+-----------+--------+-------+
-- 5 rows in set (0.00 sec)




mysql> DELETE FROM students4 WHERE studentid = 502;

-- Query OK, 1 row affected (0.01 sec)




mysql> SELECT * FROM students4;

-- +-----------+--------------+
-- | studentid | studentname  |
-- +-----------+--------------+
-- |       501 | Rahul Sharma |
-- |       503 | Aman Verma   |
-- +-----------+--------------+
-- 2 rows in set (0.00 sec)




mysql> SELECT * FROM results4;

-- +----------+-----------+--------+-------+
-- | resultid | studentid | examid | score |
-- +----------+-----------+--------+-------+
-- |        1 |       501 |    801 | 85.00 |
-- |        2 |       501 |    802 | 78.00 |
-- |        5 |       503 |    802 | 74.00 |
-- +----------+-----------+--------+-------+
-- 3 rows in set (0.00 sec)




mysql> UPDATE exams4 SET subjectname = 'MERN' WHERE examid = 801;

-- Query OK, 1 row affected (0.00 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0




mysql> SELECT * FROM exams4;

-- +--------+-------------+
-- | examid | subjectname |
-- +--------+-------------+
-- |    803 | DBMS        |
-- |    801 | MERN        |
-- |    802 | MySQL       |
-- +--------+-------------+
-- 3 rows in set (0.00 sec)




mysql> SELECT * FROM students4;

-- +-----------+--------------+
-- | studentid | studentname  |
-- +-----------+--------------+
-- |       501 | Rahul Sharma |
-- |       503 | Aman Verma   |
-- +-----------+--------------+
-- 2 rows in set (0.00 sec)




mysql> SELECT * FROM results4;

-- +----------+-----------+--------+-------+
-- | resultid | studentid | examid | score |
-- +----------+-----------+--------+-------+
-- |        1 |       501 |    801 | 85.00 |
-- |        2 |       501 |    802 | 78.00 |
-- |        5 |       503 |    802 | 74.00 |
-- +----------+-----------+--------+-------+
-- 3 rows in set (0.00 sec)
