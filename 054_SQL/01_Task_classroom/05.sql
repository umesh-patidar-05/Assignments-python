`
QNO  5: TRUNCATE Table
Task:

Truncate all data from students table
`









mysql> TRUNCATE TABLE students;

-- Query OK, 0 rows affected (0.03 sec)



mysql> SELECT * FROM students;

-- Empty set (0.00 sec)



mysql> DESC students;

-- +---------------+--------------+------+-----+---------+-------+
-- | Field         | Type         | Null | Key | Default | Extra |
-- +---------------+--------------+------+-----+---------+-------+
-- | id            | int          | YES  |     | NULL    |       |
-- | name          | varchar(100) | YES  |     | NULL    |       |
-- | age           | smallint     | YES  |     | NULL    |       |
-- | gender        | varchar(10)  | YES  |     | NULL    |       |
-- | address       | varchar(150) | YES  |     | NULL    |       |
-- | mobile_number | varchar(15)  | YES  |     | NULL    |       |
-- | dob           | date         | YES  |     | NULL    |       |
-- +---------------+--------------+------+-----+---------+-------+
-- 7 rows in set (0.00 sec)
