`
QNO  3: ALTER students Table
Task:

Add a column dob DATE

Rename column phone to mobile_number

Modify column age to SMALLINT

Drop column email
`








mysql> ALTER TABLE students ADD COLUMN dob DATE;

-- Query OK, 0 rows affected (0.03 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> ALTER TABLE students RENAME COLUMN phone TO mobile_number;

-- Query OK, 0 rows affected (0.02 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> ALTER TABLE students MODIFY COLUMN age SMALLINT;

-- Query OK, 5 rows affected (0.06 sec)
-- Records: 5  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM students;

-- +------+--------+------+--------+-----------+---------------+----------------------+------+
-- | id   | name   | age  | gender | address   | mobile_number | email                | dob  |
-- +------+--------+------+--------+-----------+---------------+----------------------+------+
-- |  101 | umesh  |   21 | male   | indore    | 1223451234    | umesh@gmail.com      | NULL |
-- |  102 | kushal |   20 | male   | neemuch   | 2222444466    | kpatel@gmailcom      | NULL |
-- |  103 | chotu  |   15 | male   | tihad     | 1111111111    | donchotu@gmail.com   | NULL |
-- |  104 | motu   |   18 | male   | delhi     | 5555555555    | delhisehai@gmail.com | NULL |
-- |  105 | sheela |   25 | female | hyderabad | 8989898989    | iamasheela@gmail.com | NULL |
-- +------+--------+------+--------+-----------+---------------+----------------------+------+
-- 5 rows in set (0.00 sec)



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
-- | email         | varchar(100) | YES  |     | NULL    |       |
-- | dob           | date         | YES  |     | NULL    |       |
-- +---------------+--------------+------+-----+---------+-------+
-- 8 rows in set (0.00 sec)



mysql> ALTER TABLE students DROP COLUMN email;

-- Query OK, 0 rows affected (0.01 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



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