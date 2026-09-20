mysql> CREATE TABLE studentpd ( rollno INT PRIMARY KEY, name VARCHAR(30), department VARCHAR(50));
Query OK, 0 rows affected (0.06 sec)

mysql> DESC studentpd;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| rollno     | int         | NO   | PRI | NULL    |       |
| name       | varchar(30) | YES  |     | NULL    |       |
| department | varchar(50) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)


mysql> select * from studentpd;
+--------+-------+------------------------+
| rollno | name  | department             |
+--------+-------+------------------------+
|    101 | Rahul | Computer Science       |
|    102 | Priya | Information Technology |
|    103 | Aman  | Data Science           |
|    104 | Neha  | Computer Science       |
|    105 | Rohit | Electronics            |
+--------+-------+------------------------+
5 rows in set (0.00 sec)