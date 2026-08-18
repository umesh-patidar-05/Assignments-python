`
QNO  4: RENAME Table
Task:

Rename books table to library_books
`






mysql> ALTER TABLE books RENAME TO library_books;

-- Query OK, 0 rows affected (0.01 sec)



mysql> SELECT * FROM library_books;

-- +---------+---------------+----------------+-----------+------------------+--------+----------------------+
-- | book_id | title         | author         | genre     | publication_year | price  | publisher            |
-- +---------+---------------+----------------+-----------+------------------+--------+----------------------+
-- |     101 | The Alchemist | Paulo Coelho   | Fiction   |             1988 | 299.00 | Harpercollins        |
-- |     102 | Atomic Habits | James Clear    | Self-Help |             2028 | 499.00 | Avery                |
-- |     103 | The Hobbit    | J.J.R. Tolkein | Fantasy   |             1937 | 399.00 | George Allen & Unwin |
-- |     104 | Ikigai        | Hector Garcia  | Self-Help |             2016 | 350.00 | Penguin Books        |
-- +---------+---------------+----------------+-----------+------------------+--------+----------------------+
-- 4 rows in set (0.00 sec)
