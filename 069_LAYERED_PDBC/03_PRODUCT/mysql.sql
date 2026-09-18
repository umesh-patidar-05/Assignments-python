mysql> CREATE TABLE productpd( pid INT PRIMARY KEY, pname VARCHAR(50), price DECIMAL(10,2));
Query OK, 0 rows affected (0.03 sec)

mysql> DESC productpd;
+-------+---------------+------+-----+---------+-------+
| Field | Type          | Null | Key | Default | Extra |
+-------+---------------+------+-----+---------+-------+
| pid   | int           | NO   | PRI | NULL    |       |
| pname | varchar(50)   | YES  |     | NULL    |       |
| price | decimal(10,2) | YES  |     | NULL    |       |
+-------+---------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> INSERT INTO productpd VALUES
    -> (1, 'Laptop', 55000.00),(2, 'Keyboard', 1200.00),(3, 'Mouse', 650.00),(4, 'Monitor', 15000.00),(5, 'Headphones', 2500.00);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM productpd;
+-----+------------+----------+
| pid | pname      | price    |
+-----+------------+----------+
|   1 | Laptop     | 55000.00 |
|   2 | Keyboard   |  1200.00 |
|   3 | Mouse      |   650.00 |
|   4 | Monitor    | 15000.00 |
|   5 | Headphones |  2500.00 |
+-----+------------+----------+
5 rows in set (0.00 sec)