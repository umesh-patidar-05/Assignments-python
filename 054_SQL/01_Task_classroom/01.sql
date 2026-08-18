`
QNO  1: Create and Populate students Table
Columns:

id INT

name VARCHAR(100)

age INT

gender VARCHAR(10)

address VARCHAR(150)

phone VARCHAR(15)

email VARCHAR(100)

Task:

Insert 5 different student records with dummy data.
`







mysql> CREATE TABLE students( id INT, name VARCHAR(100), age INT, gender VARCHAR(10), address VARCHAR(150), phone VARCHAR(15), email VARCHAR(100));
-- Query OK, 0 rows affected (0.03 sec)



mysql> DESC students;

-- +---------+--------------+------+-----+---------+-------+
-- | Field   | Type         | Null | Key | Default | Extra |
-- +---------+--------------+------+-----+---------+-------+
-- | id      | int          | YES  |     | NULL    |       |
-- | name    | varchar(100) | YES  |     | NULL    |       |
-- | age     | int          | YES  |     | NULL    |       |
-- | gender  | varchar(10)  | YES  |     | NULL    |       |
-- | address | varchar(150) | YES  |     | NULL    |       |
-- | phone   | varchar(15)  | YES  |     | NULL    |       |
-- | email   | varchar(100) | YES  |     | NULL    |       |
-- +---------+--------------+------+-----+---------+-------+
-- 7 rows in set (0.00 sec)



mysql> INSERT INTO students VALUES
    -> (101, 'umesh', 21, 'male', 'indore', 1223451234,'umesh@gmail.com'),
    -> (102, 'kushal', 20,'male','neemuch', 2222444466, 'kpatel@gmailcom'),
    -> (103, 'chotu', 15, 'male', 'tihad', 1111111111, 'donchotu@gmail.com'),
    -> (104, 'motu', 18, 'male', 'delhi', 5555555555, 'delhisehai@gmail.com'),
    -> (105, 'sheela', 25, 'female', 'hyderabad', 8989898989, 'iamasheela@gmail.com');

-- Query OK, 5 rows affected (0.01 sec)
-- Records: 5  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM students;

-- +------+--------+------+--------+-----------+------------+----------------------+
-- | id   | name   | age  | gender | address   | phone      | email                |
-- +------+--------+------+--------+-----------+------------+----------------------+
-- |  101 | umesh  |   21 | male   | indore    | 1223451234 | umesh@gmail.com      |
-- |  102 | kushal |   20 | male   | neemuch   | 2222444466 | kpatel@gmailcom      |
-- |  103 | chotu  |   15 | male   | tihad     | 1111111111 | donchotu@gmail.com   |
-- |  104 | motu   |   18 | male   | delhi     | 5555555555 | delhisehai@gmail.com |
-- |  105 | sheela |   25 | female | hyderabad | 8989898989 | iamasheela@gmail.com |
-- +------+--------+------+--------+-----------+------------+----------------------+
-- 5 rows in set (0.00 sec)
