mysql> CREATE TABLE customerpd( cid INT PRIMARY KEY, cname VARCHAR(30),cdob DATE, caddress VARCHAR(50));
Query OK, 0 rows affected (0.70 sec)

mysql> DESC customerpd;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| cid      | int         | NO   | PRI | NULL    |       |
| cname    | varchar(30) | YES  |     | NULL    |       |
| cdob     | date        | YES  |     | NULL    |       |
| caddress | varchar(50) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> INSERT INTO customerpd VALUES
    -> (1, 'Rahul Sharma', '2002-05-15', 'Indore'),
    -> (2, 'Priya Verma', '2001-08-22', 'Bhopal'),
    -> (3, 'Aman Patel', '2003-01-10', 'Ujjain'),
    -> (4, 'Neha Singh', '2000-12-05', 'Jaipur'),
    -> (5, 'Vikas Jain', '2002-03-18', 'Mumbai');
Query OK, 5 rows affected (0.11 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM customerpd;
+-----+--------------+------------+----------+
| cid | cname        | cdob       | caddress |
+-----+--------------+------------+----------+
|   1 | Rahul Sharma | 2002-05-15 | Indore   |
|   2 | Priya Verma  | 2001-08-22 | Bhopal   |
|   3 | Aman Patel   | 2003-01-10 | Ujjain   |
|   4 | Neha Singh   | 2000-12-05 | Jaipur   |
|   5 | Vikas Jain   | 2002-03-18 | Mumbai   |
+-----+--------------+------------+----------+
5 rows in set (0.00 sec)
