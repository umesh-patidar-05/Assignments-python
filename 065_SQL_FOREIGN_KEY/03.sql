`
QNO 3:
A library maintains a record of books and their authors. If an author is removed, their books should not be deleted, but their author information should be set to NULL.

Tasks:
Create an Authors table:

AuthorID (PRIMARY KEY, AUTO_INCREMENT)
AuthorName (NOT NULL, UNIQUE)
Create a Books table:

BookID (PRIMARY KEY, AUTO_INCREMENT)
BookTitle (NOT NULL, UNIQUE)
AuthorID (FOREIGN KEY )
Insert sample data (at least 3 authors and 5 books).

Delete an author and check if books remain, but the AuthorID is set to NULL.

Update the author of a book to a new author.
`





mysql> CREATE TABLE authors( authorid INT PRIMARY KEY AUTO_INCREMENT, authorname VARCHAR(20) NOT NULL UNIQUE);

-- Query OK, 0 rows affected (0.03 sec)




mysql> DESC authors;

-- +------------+-------------+------+-----+---------+----------------+
-- | Field      | Type        | Null | Key | Default | Extra          |
-- +------------+-------------+------+-----+---------+----------------+
-- | authorid   | int         | NO   | PRI | NULL    | auto_increment |
-- | authorname | varchar(20) | NO   | UNI | NULL    |                |
-- +------------+-------------+------+-----+---------+----------------+
-- 2 rows in set (0.00 sec)




mysql> CREATE TABLE books( bookid INT PRIMARY KEY AUTO_INCREMENT, booktitle VARCHAR(20) NOT NULL UNIQUE, authorid INT, FOREIGN KEY(authorid) REFERENCES authors(authorid) ON DELETE SET NULL);

-- Query OK, 0 rows affected (0.05 sec)




mysql> DESC books;

-- +-----------+-------------+------+-----+---------+----------------+
-- | Field     | Type        | Null | Key | Default | Extra          |
-- +-----------+-------------+------+-----+---------+----------------+
-- | bookid    | int         | NO   | PRI | NULL    | auto_increment |
-- | booktitle | varchar(20) | NO   | UNI | NULL    |                |
-- | authorid  | int         | YES  | MUL | NULL    |                |
-- +-----------+-------------+------+-----+---------+----------------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO authors VALUES(101,'Chetan Bhagat'), (102, 'Ruskin Bond'), (103, 'R. K. Narayan');

-- Query OK, 3 rows affected (0.01 sec)
-- Records: 3  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM authors;

-- +----------+---------------+
-- | authorid | authorname    |
-- +----------+---------------+
-- |      101 | Chetan Bhagat |
-- |      103 | R. K. Narayan |
-- |      102 | Ruskin Bond   |
-- +----------+---------------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO books VALUES (1, 'Five Point Someone', 101), (2, '2 States', 101), (3, 'The Blue Umbrella', 102), (4, 'The Room on the Roof', 102), (5, 'Malgudi Days', 103);

-- Query OK, 5 rows affected (0.01 sec)
-- Records: 5  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM books;

-- +--------+----------------------+----------+
-- | bookid | booktitle            | authorid |
-- +--------+----------------------+----------+
-- |      1 | Five Point Someone   |      101 |
-- |      2 | 2 States             |      101 |
-- |      3 | The Blue Umbrella    |      102 |
-- |      4 | The Room on the Roof |      102 |
-- |      5 | Malgudi Days         |      103 |
-- +--------+----------------------+----------+
-- 5 rows in set (0.00 sec)



mysql> DELETE FROM authors WHERE authorid = 102;

-- Query OK, 1 row affected (0.00 sec)




mysql> SELECT * FROM authors;

-- +----------+---------------+
-- | authorid | authorname    |
-- +----------+---------------+
-- |      101 | Chetan Bhagat |
-- |      103 | R. K. Narayan |
-- +----------+---------------+
-- 2 rows in set (0.00 sec)




mysql> SELECT * FROM books;

-- +--------+----------------------+----------+
-- | bookid | booktitle            | authorid |
-- +--------+----------------------+----------+
-- |      1 | Five Point Someone   |      101 |
-- |      2 | 2 States             |      101 |
-- |      3 | The Blue Umbrella    |     NULL |
-- |      4 | The Room on the Roof |     NULL |
-- |      5 | Malgudi Days         |      103 |
-- +--------+----------------------+----------+
-- 5 rows in set (0.00 sec)




mysql> UPDATE authors SET authorname = 'R.D Sharma' WHERE authorid = 103;

-- Query OK, 1 row affected (0.00 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0




mysql> SELECT * FROM authors;

-- +----------+---------------+
-- | authorid | authorname    |
-- +----------+---------------+
-- |      101 | Chetan Bhagat |
-- |      103 | R.D Sharma    |
-- +----------+---------------+
-- 2 rows in set (0.00 sec)
