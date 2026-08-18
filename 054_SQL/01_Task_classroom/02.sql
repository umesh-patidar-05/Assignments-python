`
QNO  2: Create and Populate books Table
Columns:

book_id INT

title VARCHAR(150)

author VARCHAR(100)

genre VARCHAR(50)

publication_year INT

price DECIMAL(6,2)

publisher VARCHAR(100)

Task:

Insert 4 book records.
`








mysql> CREATE TABLE books( book_id INT, title VARCHAR(150), author VARCHAR(100), genre VARCHAR(50), publication_year INT, price DECIMAL(6,2), publisher VARCHAR(100));

-- Query OK, 0 rows affected (0.35 sec)



mysql> DESC books;

-- +------------------+--------------+------+-----+---------+-------+
-- | Field            | Type         | Null | Key | Default | Extra |
-- +------------------+--------------+------+-----+---------+-------+
-- | book_id          | int          | YES  |     | NULL    |       |
-- | title            | varchar(150) | YES  |     | NULL    |       |
-- | author           | varchar(100) | YES  |     | NULL    |       |
-- | genre            | varchar(50)  | YES  |     | NULL    |       |
-- | publication_year | int          | YES  |     | NULL    |       |
-- | price            | decimal(6,2) | YES  |     | NULL    |       |
-- | publisher        | varchar(100) | YES  |     | NULL    |       |
-- +------------------+--------------+------+-----+---------+-------+
-- 7 rows in set (0.00 sec)



mysql> INSERT INTO books VALUES
    -> (101, 'The Alchemist', 'Paulo Coelho', 'Fiction', 1988, 299, 'Harpercollins'),
    -> (102, 'Atomic Habits', 'James Clear', 'Self-Help', 2028, 499, 'Avery'),
    -> (103, 'The Hobbit', 'J.J.R. Tolkein', 'Fantasy', 1937, 399, 'George Allen & Unwin'),
    -> (104, 'Ikigai', 'Hector Garcia', 'Self-Help', 2016, 350, 'Penguin Books');

-- Query OK, 4 rows affected (0.08 sec)
-- Records: 4  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM books;

-- +---------+---------------+----------------+-----------+------------------+--------+----------------------+
-- | book_id | title         | author         | genre     | publication_year | price  | publisher            |
-- +---------+---------------+----------------+-----------+------------------+--------+----------------------+
-- |     101 | The Alchemist | Paulo Coelho   | Fiction   |             1988 | 299.00 | Harpercollins        |
-- |     102 | Atomic Habits | James Clear    | Self-Help |             2028 | 499.00 | Avery                |
-- |     103 | The Hobbit    | J.J.R. Tolkein | Fantasy   |             1937 | 399.00 | George Allen & Unwin |
-- |     104 | Ikigai        | Hector Garcia  | Self-Help |             2016 | 350.00 | Penguin Books        |
-- +---------+---------------+----------------+-----------+------------------+--------+----------------------+
-- 4 rows in set (0.00 sec)
