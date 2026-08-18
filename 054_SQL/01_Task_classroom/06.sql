`
QNO  6: DROP Table
Task:

Drop the library_books table
`







mysql> DROP TABLE library_books;

-- Query OK, 0 rows affected (0.01 sec)



mysql> SELECT * FROM library_books;

-- ERROR 1146 (42S02): Table 'batch18.library_books' doesn't exist


mysql> DESC library_books;

-- ERROR 1146 (42S02): Table 'batch18.library_books' doesn't exist