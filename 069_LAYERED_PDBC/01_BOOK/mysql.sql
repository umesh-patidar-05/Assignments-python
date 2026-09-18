mysql> CREATE TABLE book_pdbc(bid INT PRIMARY KEY, bname VARCHAR(50), bauthor VARCHAR(50) ,bprice DECIMAL(10,2));
Query OK, 0 rows affected (0.13 sec)

mysql> DESC book_pdbc;
+---------+---------------+------+-----+---------+-------+
| Field   | Type          | Null | Key | Default | Extra |
+---------+---------------+------+-----+---------+-------+
| bid     | int           | NO   | PRI | NULL    |       |
| bname   | varchar(50)   | YES  |     | NULL    |       |
| bauthor | varchar(50)   | YES  |     | NULL    |       |
| bprice  | decimal(10,2) | YES  |     | NULL    |       |
+---------+---------------+------+-----+---------+-------+
4 rows in set (0.04 sec)

mysql> INSERT INTO book_pdbc (bid, bname, bauthor, bprice) VALUES(1, 'Python Basics', 'Mark Lutz', 450.00),(2, 'Learning SQL', 'Alan Beaulieu', 550.00),(3, 'Clean Code', 'Robert Martin', 700.00),(4, 'Data Science Handbook', 'Jake VanderPlas', 650.00),(5, 'Artificial Intelligence', 'Stuart Russell', 850.00);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM book_pdbc;
+-----+-------------------------+-----------------+--------+
| bid | bname                   | bauthor         | bprice |
+-----+-------------------------+-----------------+--------+
|   1 | Python Basics           | Mark Lutz       | 450.00 |
|   2 | Learning SQL            | Alan Beaulieu   | 550.00 |
|   3 | Clean Code              | Robert Martin   | 700.00 |
|   4 | Data Science Handbook   | Jake VanderPlas | 650.00 |
|   5 | Artificial Intelligence | Stuart Russell  | 850.00 |
+-----+-------------------------+-----------------+--------+
5 rows in set (0.00 sec)