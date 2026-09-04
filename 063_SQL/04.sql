`
4.
Find the average marks in each subject and display only subjects where the average is above 80. (GROUP BY + HAVING)
Find the total number of students in each class and order them by class in descending order. (GROUP BY + ORDER BY)
Find the subject where students scored the highest average marks, displaying only subjects where the average is above 85. (GROUP BY + HAVING + ORDER BY)
Find the student who scored the highest marks overall. (ORDER BY + LIMIT 1)
Find the number of students in each class who scored more than 85, displaying only classes with more than 2 such students. (GROUP BY + HAVING)
`







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










mysql> SELECT subject, AVG(marks) FROM students GROUP BY subject HAVING AVG(marks) > 80;

-- +---------+------------+
-- | subject | AVG(marks) |
-- +---------+------------+
-- | Math    |    88.0000 |
-- +---------+------------+
-- 1 row in set (0.00 sec)




mysql> SELECT class, COUNT(*) FROM students GROUP BY CLASS ORDER BY COUNT(*) DESC;

-- +-------+----------+
-- | class | COUNT(*) |
-- +-------+----------+
-- |    10 |        5 |
-- |     9 |        5 |
-- +-------+----------+
-- 2 rows in set (0.00 sec)




mysql> SELECT subject, AVG(marks) FROM students GROUP BY subject HAVING AVG(marks) > 85 ORDER BY AVG(marks) DESC LIMIT 1;

-- +---------+------------+
-- | subject | AVG(marks) |
-- +---------+------------+
-- | Math    |    88.0000 |
-- +---------+------------+
-- 1 row in set (0.00 sec)




mysql> SELECT name, SUM(marks) FROM students GROUP BY name ORDER BY SUM(marks) DESC LIMIT 1;

-- +------+------------+
-- | name | SUM(marks) |
-- +------+------------+
-- | Bob  |         92 |
-- +------+------------+
-- 1 row in set (0.00 sec)




mysql> SELECT class, COUNT(*) FROM students WHERE marks > 85 GROUP BY class HAVING COUNT(*) > 2;

-- Empty set (0.00 sec)
