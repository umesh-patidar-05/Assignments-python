mysql> use assignmetnts;
ERROR 1049 (42000): Unknown database 'assignmetnts'
mysql> use assignments;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+-----------------------+
| Tables_in_assignments |
+-----------------------+
| customer              |
| departments           |
| employees             |
| orders                |
+-----------------------+
4 rows in set (0.00 sec)

mysql> 
mysql> 
mysql> 
mysql> CREATE TABLE department( dept_id INT PRIMARY KEY, dept_name VARCHAR(30), location VARCHAR(30));
Query OK, 0 rows affected (0.62 sec)

mysql> DESC department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int         | NO   | PRI | NULL    |       |
| dept_name | varchar(30) | YES  |     | NULL    |       |
| location  | varchar(30) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> INSERT INTO department VALUES
    -> (1, 'HR', 'Indore'),
    -> (2, 'IT', 'Pune'),
    -> (3, 'Finance', 'Mumbai'),
    -> (4, 'Sales', 'Indore'),
    -> (5, 'Admin', 'Delhi'),
    -> (6, 'Research', 'Bangalore');
Query OK, 6 rows affected (0.09 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM department;
+---------+-----------+-----------+
| dept_id | dept_name | location  |
+---------+-----------+-----------+
|       1 | HR        | Indore    |
|       2 | IT        | Pune      |
|       3 | Finance   | Mumbai    |
|       4 | Sales     | Indore    |
|       5 | Admin     | Delhi     |
|       6 | Research  | Bangalore |
+---------+-----------+-----------+
6 rows in set (0.00 sec)

mysql> CREATE TABLE employee( emp_id INT PRIMARY KEY, emp_name VARCHAR(30), salary DECIMAL(10,2), dept_id INT ,FOREIGN KEY(dept_id) REFERENCES department(dept_id));
Query OK, 0 rows affected (0.78 sec)

mysql> DESC employee;
+----------+---------------+------+-----+---------+-------+
| Field    | Type          | Null | Key | Default | Extra |
+----------+---------------+------+-----+---------+-------+
| emp_id   | int           | NO   | PRI | NULL    |       |
| emp_name | varchar(30)   | YES  |     | NULL    |       |
| salary   | decimal(10,2) | YES  |     | NULL    |       |
| dept_id  | int           | YES  | MUL | NULL    |       |
+----------+---------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> INSERT INTO employee VALUES
    -> (101, 'Amit', 30000, 1),
    -> (102, 'Rahul', 50000, 2),
    -> (103, 'Priya', 40000, 2),
    -> (104, 'Neha', 60000, 3),
    -> (105, 'Rohit', 35000, 3),
    -> (106, 'Sneha', 45000, 4),
    -> (107, 'Karan', 55000, 4),
    -> (108, 'Pooja', 28000, 1),
    -> (109, 'Vijay', 70000, 2),
    -> (110, 'Ankit', 32000, 5),
    -> (111, 'Meena', 65000, 3),
    -> (112, 'Arjun', 25000, 5);
Query OK, 12 rows affected (0.20 sec)
Records: 12  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM employee;
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    101 | Amit     | 30000.00 |       1 |
|    102 | Rahul    | 50000.00 |       2 |
|    103 | Priya    | 40000.00 |       2 |
|    104 | Neha     | 60000.00 |       3 |
|    105 | Rohit    | 35000.00 |       3 |
|    106 | Sneha    | 45000.00 |       4 |
|    107 | Karan    | 55000.00 |       4 |
|    108 | Pooja    | 28000.00 |       1 |
|    109 | Vijay    | 70000.00 |       2 |
|    110 | Ankit    | 32000.00 |       5 |
|    111 | Meena    | 65000.00 |       3 |
|    112 | Arjun    | 25000.00 |       5 |
+--------+----------+----------+---------+
12 rows in set (0.01 sec)





mysql> SELECT * FROM employee WHERE salary >  (SELECT AVG(salary) FROM employee);\
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    102 | Rahul    | 50000.00 |       2 |
|    104 | Neha     | 60000.00 |       3 |
|    106 | Sneha    | 45000.00 |       4 |
|    107 | Karan    | 55000.00 |       4 |
|    109 | Vijay    | 70000.00 |       2 |
|    111 | Meena    | 65000.00 |       3 |
+--------+----------+----------+---------+
6 rows in set (0.02 sec)




























mysql> SELECT * FROM employee WHERE salary >  (SELECT AVG(salary) FROM employee);\
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    102 | Rahul    | 50000.00 |       2 |
|    104 | Neha     | 60000.00 |       3 |
|    106 | Sneha    | 45000.00 |       4 |
|    107 | Karan    | 55000.00 |       4 |
|    109 | Vijay    | 70000.00 |       2 |
|    111 | Meena    | 65000.00 |       3 |
+--------+----------+----------+---------+
6 rows in set (0.02 sec)





mysql> SELECT * FROM employee WHERE salary = (SELECT MAX(salary) FROM employee);
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    109 | Vijay    | 70000.00 |       2 |
+--------+----------+----------+---------+
1 row in set (0.00 sec)






mysql> SELECT * FROM employee WHERE salary = (SELECT MIN(salary) FROM employee);
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    112 | Arjun    | 25000.00 |       5 |
+--------+----------+----------+---------+
1 row in set (0.00 sec)






mysql> SELECT * FROM employee WHERE salary > (SELECT salary FROM employee WHERE emp_name =
"Amit");
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    102 | Rahul    | 50000.00 |       2 |
|    103 | Priya    | 40000.00 |       2 |
|    104 | Neha     | 60000.00 |       3 |
|    105 | Rohit    | 35000.00 |       3 |
|    106 | Sneha    | 45000.00 |       4 |
|    107 | Karan    | 55000.00 |       4 |
|    109 | Vijay    | 70000.00 |       2 |
|    110 | Ankit    | 32000.00 |       5 |
|    111 | Meena    | 65000.00 |       3 |
+--------+----------+----------+---------+
9 rows in set (0.00 sec)






mysql> SELECT * FROM employee WHERE salary < ( SELECT salary from employee WHERE emp_name = 'Rahul');
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    101 | Amit     | 30000.00 |       1 |
|    103 | Priya    | 40000.00 |       2 |
|    105 | Rohit    | 35000.00 |       3 |
|    106 | Sneha    | 45000.00 |       4 |
|    108 | Pooja    | 28000.00 |       1 |
|    110 | Ankit    | 32000.00 |       5 |
|    112 | Arjun    | 25000.00 |       5 |
+--------+----------+----------+---------+
7 rows in set (0.00 sec)






mysql> SELECT * FROM employee WHERE dept_id IN (SELECT dept_id FROM department WHERE location = 'Indore');
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    101 | Amit     | 30000.00 |       1 |
|    108 | Pooja    | 28000.00 |       1 |
|    106 | Sneha    | 45000.00 |       4 |
|    107 | Karan    | 55000.00 |       4 |
+--------+----------+----------+---------+
4 rows in set (0.00 sec)




mysql> SELECT * FROM employee WHERE dept_id IN (SELECT dept_id FROM department WHERE location = 'Indore');
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    101 | Amit     | 30000.00 |       1 |
|    108 | Pooja    | 28000.00 |       1 |
|    106 | Sneha    | 45000.00 |       4 |
|    107 | Karan    | 55000.00 |       4 |
+--------+----------+----------+---------+
4 rows in set (0.00 sec)




mysql> SELECT * FROM employee WHERE dept_id IN (SELECT dept_id FROM department WHERE dept_name IN ('IT', 'Finance'));
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    102 | Rahul    | 50000.00 |       2 |
|    103 | Priya    | 40000.00 |       2 |
|    109 | Vijay    | 70000.00 |       2 |
|    104 | Neha     | 60000.00 |       3 |
|    105 | Rohit    | 35000.00 |       3 |
|    111 | Meena    | 65000.00 |       3 |
+--------+----------+----------+---------+
6 rows in set (0.00 sec)




mysql> SELECT * FROM employee WHERE dept_id NOT IN (SELECT dept_id FROM department WHERE location = 'Indore');
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    102 | Rahul    | 50000.00 |       2 |
|    103 | Priya    | 40000.00 |       2 |
|    104 | Neha     | 60000.00 |       3 |
|    105 | Rohit    | 35000.00 |       3 |
|    109 | Vijay    | 70000.00 |       2 |
|    110 | Ankit    | 32000.00 |       5 |
|    111 | Meena    | 65000.00 |       3 |
|    112 | Arjun    | 25000.00 |       5 |
+--------+----------+----------+---------+
8 rows in set (0.00 sec)






mysql> SELECT * FROM department WHERE dept_id NOT IN ( SELECT dept_id FROM employee);
+---------+-----------+-----------+
| dept_id | dept_name | location  |
+---------+-----------+-----------+
|       6 | Research  | Bangalore |
+---------+-----------+-----------+
1 row in set (0.00 sec)






mysql> SELECT * FROM employee WHERE salary > (SELECT AVG(salary) FROM employee WHERE dept_id = (SELECT dept_id FROM department WHERE dept_name = 'IT'));
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    104 | Neha     | 60000.00 |       3 |
|    107 | Karan    | 55000.00 |       4 |
|    109 | Vijay    | 70000.00 |       2 |
|    111 | Meena    | 65000.00 |       3 |
+--------+----------+----------+---------+
4 rows in set (0.00 sec)







mysql> SELECT * FROM employee WHERE salary > (SELECT AVG(salary) FROM employee WHERE dept_id = (SELECT dept_id FROM department WHERE dept_name = 'Finance'));
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    104 | Neha     | 60000.00 |       3 |
|    107 | Karan    | 55000.00 |       4 |
|    109 | Vijay    | 70000.00 |       2 |
|    111 | Meena    | 65000.00 |       3 |
+--------+----------+----------+---------+
4 rows in set (0.00 sec)






mysql> SELECT * FROM employee WHERE salary = (SELECT MAX(salary) FROM employee WHERE dept_id = (SELECT dept_id FROM department WHERE dept_name = 'IT'));
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    109 | Vijay    | 70000.00 |       2 |
+--------+----------+----------+---------+
1 row in set (0.00 sec)





mysql> SELECT * FROM employee WHERE salary < ( SELECT MIN(salary) FROM employee WHERE dept_id = (SELECT dept_id FROM department WHERE dept_name = 'Sales'));
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    101 | Amit     | 30000.00 |       1 |
|    103 | Priya    | 40000.00 |       2 |
|    105 | Rohit    | 35000.00 |       3 |
|    108 | Pooja    | 28000.00 |       1 |
|    110 | Ankit    | 32000.00 |       5 |
|    112 | Arjun    | 25000.00 |       5 |
+--------+----------+----------+---------+
6 rows in set (0.01 sec)




mysql> SELECT * FROM employee WHERE salary >ANY (SELECT salary FROM employee WHERE dept_id
= (SELECT dept_id FROM department WHERE dept_name = 'HR'));
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    101 | Amit     | 30000.00 |       1 |
|    102 | Rahul    | 50000.00 |       2 |
|    103 | Priya    | 40000.00 |       2 |
|    104 | Neha     | 60000.00 |       3 |
|    105 | Rohit    | 35000.00 |       3 |
|    106 | Sneha    | 45000.00 |       4 |
|    107 | Karan    | 55000.00 |       4 |
|    109 | Vijay    | 70000.00 |       2 |
|    110 | Ankit    | 32000.00 |       5 |
|    111 | Meena    | 65000.00 |       3 |
+--------+----------+----------+---------+
10 rows in set (0.00 sec)




mysql> SELECT * FROM employee WHERE salary >ALL (SELECT salary FROM employee WHERE dept_id
= (SELECT dept_id FROM department WHERE dept_name = 'HR'));
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    102 | Rahul    | 50000.00 |       2 |
|    103 | Priya    | 40000.00 |       2 |
|    104 | Neha     | 60000.00 |       3 |
|    105 | Rohit    | 35000.00 |       3 |
|    106 | Sneha    | 45000.00 |       4 |
|    107 | Karan    | 55000.00 |       4 |
|    109 | Vijay    | 70000.00 |       2 |
|    110 | Ankit    | 32000.00 |       5 |
|    111 | Meena    | 65000.00 |       3 |
+--------+----------+----------+---------+
9 rows in set (0.01 sec) 



mysql> SELECT * FROM employee WHERE salary <ANY (SELECT salary FROM employee WHERE dept_id
= (SELECT dept_id FROM department WHERE dept_name = 'IT'));
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    101 | Amit     | 30000.00 |       1 |
|    102 | Rahul    | 50000.00 |       2 |
|    103 | Priya    | 40000.00 |       2 |
|    104 | Neha     | 60000.00 |       3 |
|    105 | Rohit    | 35000.00 |       3 |
|    106 | Sneha    | 45000.00 |       4 |
|    107 | Karan    | 55000.00 |       4 |
|    108 | Pooja    | 28000.00 |       1 |
|    110 | Ankit    | 32000.00 |       5 |
|    111 | Meena    | 65000.00 |       3 |
|    112 | Arjun    | 25000.00 |       5 |
+--------+----------+----------+---------+
11 rows in set (0.03 sec)





mysql> SELECT * FROM employee WHERE salary >ALL (SELECT salary FROM employee WHERE dept_id
= (SELECT dept_id FROM department WHERE dept_name = 'Finance'));
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    109 | Vijay    | 70000.00 |       2 |
+--------+----------+----------+---------+
1 row in set (0.00 sec)






mysql> SELECT * FROM employee WHERE salary <ALL (SELECT salary FROM employee WHERE dept_id
= (SELECT dept_id FROM department WHERE dept_name = 'IT'));
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    101 | Amit     | 30000.00 |       1 |
|    105 | Rohit    | 35000.00 |       3 |
|    108 | Pooja    | 28000.00 |       1 |
|    110 | Ankit    | 32000.00 |       5 |
|    112 | Arjun    | 25000.00 |       5 |
+--------+----------+----------+---------+
5 rows in set (0.00 sec)





mysql> SELECT * FROM employee AS e WHERE e.salary > ( SELECT AVG(salary) FROM employee AS e2 WHERE e2.dept_id = e.dept_id);
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    101 | Amit     | 30000.00 |       1 |
|    104 | Neha     | 60000.00 |       3 |
|    107 | Karan    | 55000.00 |       4 |
|    109 | Vijay    | 70000.00 |       2 |
|    110 | Ankit    | 32000.00 |       5 |
|    111 | Meena    | 65000.00 |       3 |
+--------+----------+----------+---------+
6 rows in set (0.00 sec)





mysql> SELECT * FROM employee AS e WHERE e.salary > ( SELECT AVG(salary) FROM employee AS e2 WHERE e2.dept_id = e.dept_id);
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    101 | Amit     | 30000.00 |       1 |
|    104 | Neha     | 60000.00 |       3 |
|    107 | Karan    | 55000.00 |       4 |
|    109 | Vijay    | 70000.00 |       2 |
|    110 | Ankit    | 32000.00 |       5 |
|    111 | Meena    | 65000.00 |       3 |
+--------+----------+----------+---------+
6 rows in set (0.00 sec)




mysql> SELECT * FROM employee AS e WHERE e.salary < ( SELECT AVG(salary) FROM employee AS e2 WHERE e2.dept_id = e.dept_id);
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    102 | Rahul    | 50000.00 |       2 |
|    103 | Priya    | 40000.00 |       2 |
|    105 | Rohit    | 35000.00 |       3 |
|    106 | Sneha    | 45000.00 |       4 |
|    108 | Pooja    | 28000.00 |       1 |
|    112 | Arjun    | 25000.00 |       5 |
+--------+----------+----------+---------+
6 rows in set (0.01 sec)






mysql> SELECT * FROM employee AS e WHERE e.salary = ( SELECT AVG(salary) FROM employee AS e2 WHERE e2.dept_id = e.dept_id);
Empty set (0.01 sec)





mysql> SELECT * FROM employee AS e WHERE e.salary = ( SELECT MAX(e2.salary) FROM employee AS e2 WHERE e2.dept_id = e.dept_id);
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    101 | Amit     | 30000.00 |       1 |
|    107 | Karan    | 55000.00 |       4 |
|    109 | Vijay    | 70000.00 |       2 |
|    110 | Ankit    | 32000.00 |       5 |
|    111 | Meena    | 65000.00 |       3 |
+--------+----------+----------+---------+
5 rows in set (0.00 sec)





mysql> SELECT * FROM employee AS e WHERE e.salary = ( SELECT MIN(e2.salary) FROM employee A
S e2 WHERE e2.dept_id = e.dept_id);
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    103 | Priya    | 40000.00 |       2 |
|    105 | Rohit    | 35000.00 |       3 |
|    106 | Sneha    | 45000.00 |       4 |
|    108 | Pooja    | 28000.00 |       1 |
|    112 | Arjun    | 25000.00 |       5 |
+--------+----------+----------+---------+
5 rows in set (0.00 sec)





mysql> SELECT * FROM employee AS e WHERE e.salary <> ( SELECT MAX(e2.salary) FROM employee
AS e2 WHERE e2.dept_id = e.dept_id);
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    102 | Rahul    | 50000.00 |       2 |
|    103 | Priya    | 40000.00 |       2 |
|    104 | Neha     | 60000.00 |       3 |
|    105 | Rohit    | 35000.00 |       3 |
|    106 | Sneha    | 45000.00 |       4 |
|    108 | Pooja    | 28000.00 |       1 |
|    112 | Arjun    | 25000.00 |       5 |
+--------+----------+----------+---------+
7 rows in set (0.00 sec)




mysql> SELECT * FROM employee AS e WHERE e.salary <> ( SELECT MIN(e2.salary) FROM employee
AS e2 WHERE e2.dept_id = e.dept_id);
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    101 | Amit     | 30000.00 |       1 |
|    102 | Rahul    | 50000.00 |       2 |
|    104 | Neha     | 60000.00 |       3 |
|    107 | Karan    | 55000.00 |       4 |
|    109 | Vijay    | 70000.00 |       2 |
|    110 | Ankit    | 32000.00 |       5 |
|    111 | Meena    | 65000.00 |       3 |
+--------+----------+----------+---------+
7 rows in set (0.00 sec)






mysql> SELECT MAX(salary) FROM employee WHERE salary < (SELECT MAX(salary) FROM employee);
+-------------+
| MAX(salary) |
+-------------+
|    65000.00 |
+-------------+
1 row in set (0.00 sec)





mysql> SELECT * FROM employee WHERE salary = (SELECT MAX(salary) FROM employee WHERE salary < (SELECT MAX(salary) FROM employee));
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    111 | Meena    | 65000.00 |       3 |
+--------+----------+----------+---------+
1 row in set (0.00 sec)






mysql> SELECT MAX(salary) FROM employee WHERE salary < (SELECT MAX(salary) FROM employee WHERE salary < (SELECT MAX(salary) FROM employee));
+-------------+
| MAX(salary) |
+-------------+
|    60000.00 |
+-------------+
1 row in set (0.00 sec)






mysql> SELECT * FROM employee WHERE salary = (SELECT MAX(salary) FROM employee WHERE salary < (SELECT MAX(salary) FROM employee WHERE salary < (SELECT MAX(salary)FROM employee)));
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    104 | Neha     | 60000.00 |       3 |
+--------+----------+----------+---------+
1 row in set (0.00 sec)






mysql> SELECT * FROM department WHERE dept_id IN ( SELECT dept_id from employee);
+---------+-----------+----------+
| dept_id | dept_name | location |
+---------+-----------+----------+
|       1 | HR        | Indore   |
|       2 | IT        | Pune     |
|       3 | Finance   | Mumbai   |
|       4 | Sales     | Indore   |
|       5 | Admin     | Delhi    |
+---------+-----------+----------+
5 rows in set (0.01 sec)





mysql> SELECT * FROM department WHERE dept_id NOT IN ( SELECT dept_id from employee);
+---------+-----------+-----------+
| dept_id | dept_name | location  |
+---------+-----------+-----------+
|       6 | Research  | Bangalore |
+---------+-----------+-----------+
1 row in set (0.00 sec)





mysql> SELECT * FROM department where dept_id IN (SELECT dept_id FROM employee WHERE  salary > 60000);
+---------+-----------+----------+
| dept_id | dept_name | location |
+---------+-----------+----------+
|       2 | IT        | Pune     |
|       3 | Finance   | Mumbai   |
+---------+-----------+----------+
2 rows in set (0.00 sec)




mysql> SELECT * FROM department where dept_id NOT IN (SELECT dept_id FROM employee WHERE  salary > 60000);
+---------+-----------+-----------+
| dept_id | dept_name | location  |
+---------+-----------+-----------+
|       1 | HR        | Indore    |
|       4 | Sales     | Indore    |
|       5 | Admin     | Delhi     |
|       6 | Research  | Bangalore |
+---------+-----------+-----------+
4 rows in set (0.00 sec)





mysql> SELECT * FROM department AS d WHERE d.dept_id IN (SELECT e.dept_id FROM employee As
e WHERE e.salary < 30000);
+---------+-----------+----------+
| dept_id | dept_name | location |
+---------+-----------+----------+
|       1 | HR        | Indore   |
|       5 | Admin     | Delhi    |
+---------+-----------+----------+
2 rows in set (0.00 sec)






mysql> SELECT * FROM department AS d WHERE d.dept_id NOT IN (SELECT e.dept_id FROM employee
 As e WHERE e.salary < 30000);
+---------+-----------+-----------+
| dept_id | dept_name | location  |
+---------+-----------+-----------+
|       2 | IT        | Pune      |
|       3 | Finance   | Mumbai    |
|       4 | Sales     | Indore    |
|       6 | Research  | Bangalore |
+---------+-----------+-----------+
4 rows in set (0.00 sec)







mysql> SELECT * FROM employee WHERE dept_id IN (SELECT dept_id FROM department);
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    101 | Amit     | 30000.00 |       1 |
|    108 | Pooja    | 28000.00 |       1 |
|    102 | Rahul    | 50000.00 |       2 |
|    103 | Priya    | 40000.00 |       2 |
|    109 | Vijay    | 70000.00 |       2 |
|    104 | Neha     | 60000.00 |       3 |
|    105 | Rohit    | 35000.00 |       3 |
|    111 | Meena    | 65000.00 |       3 |
|    106 | Sneha    | 45000.00 |       4 |
|    107 | Karan    | 55000.00 |       4 |
|    110 | Ankit    | 32000.00 |       5 |
|    112 | Arjun    | 25000.00 |       5 |
+--------+----------+----------+---------+
12 rows in set (0.00 sec)






mysql> SELECT * FROM employee AS e1 WHERE e1.salary > (SELECT AVG(salary) FROM employee AS e2 WHERE e2.dept_id = e1.dept_id);
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    101 | Amit     | 30000.00 |       1 |
|    104 | Neha     | 60000.00 |       3 |
|    107 | Karan    | 55000.00 |       4 |
|    109 | Vijay    | 70000.00 |       2 |
|    110 | Ankit    | 32000.00 |       5 |
|    111 | Meena    | 65000.00 |       3 |
+--------+----------+----------+---------+
6 rows in set (0.01 sec)






mysql> SELECT * FROM employee AS e1 WHERE salary = (SELECT MAX(salary) FROM employee AS e2
WHERE e2.dept_id = e1.dept_id);
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    101 | Amit     | 30000.00 |       1 |
|    107 | Karan    | 55000.00 |       4 |
|    109 | Vijay    | 70000.00 |       2 |
|    110 | Ankit    | 32000.00 |       5 |
|    111 | Meena    | 65000.00 |       3 |
+--------+----------+----------+---------+
5 rows in set (0.00 sec)






mysql> SELECT * FROM employee AS e1 WHERE salary = (SELECT MIN(salary) FROM employee AS e2
WHERE e2.dept_id = e1.dept_id);
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    103 | Priya    | 40000.00 |       2 |
|    105 | Rohit    | 35000.00 |       3 |
|    106 | Sneha    | 45000.00 |       4 |
|    108 | Pooja    | 28000.00 |       1 |
|    112 | Arjun    | 25000.00 |       5 |
+--------+----------+----------+---------+
5 rows in set (0.00 sec)







mysql> SELECT *, (SELECT AVG(salary) FROM employee AS e2 WHERE e2.dept_id = e1.dept_id ) AS department_average_salary  FROM employee AS e1;
+--------+----------+----------+---------+---------------------------+
| emp_id | emp_name | salary   | dept_id | department_average_salary |
+--------+----------+----------+---------+---------------------------+
|    101 | Amit     | 30000.00 |       1 |              29000.000000 |
|    102 | Rahul    | 50000.00 |       2 |              53333.333333 |
|    103 | Priya    | 40000.00 |       2 |              53333.333333 |
|    104 | Neha     | 60000.00 |       3 |              53333.333333 |
|    105 | Rohit    | 35000.00 |       3 |              53333.333333 |
|    106 | Sneha    | 45000.00 |       4 |              50000.000000 |
|    107 | Karan    | 55000.00 |       4 |              50000.000000 |
|    108 | Pooja    | 28000.00 |       1 |              29000.000000 |
|    109 | Vijay    | 70000.00 |       2 |              53333.333333 |
|    110 | Ankit    | 32000.00 |       5 |              28500.000000 |
|    111 | Meena    | 65000.00 |       3 |              53333.333333 |
|    112 | Arjun    | 25000.00 |       5 |              28500.000000 |
+--------+----------+----------+---------+---------------------------+
12 rows in set (0.00 sec)








mysql> SELECT *, (SELECT MAX(salary) FROM employee AS e2 WHERE e2.dept_id = e1.dept_id ) AS
 department_highest_salary  FROM employee AS e1;
+--------+----------+----------+---------+---------------------------+
| emp_id | emp_name | salary   | dept_id | department_highest_salary |
+--------+----------+----------+---------+---------------------------+
|    101 | Amit     | 30000.00 |       1 |                  30000.00 |
|    102 | Rahul    | 50000.00 |       2 |                  70000.00 |
|    103 | Priya    | 40000.00 |       2 |                  70000.00 |
|    104 | Neha     | 60000.00 |       3 |                  65000.00 |
|    105 | Rohit    | 35000.00 |       3 |                  65000.00 |
|    106 | Sneha    | 45000.00 |       4 |                  55000.00 |
|    107 | Karan    | 55000.00 |       4 |                  55000.00 |
|    108 | Pooja    | 28000.00 |       1 |                  30000.00 |
|    109 | Vijay    | 70000.00 |       2 |                  70000.00 |
|    110 | Ankit    | 32000.00 |       5 |                  32000.00 |
|    111 | Meena    | 65000.00 |       3 |                  65000.00 |
|    112 | Arjun    | 25000.00 |       5 |                  32000.00 |
+--------+----------+----------+---------+---------------------------+
12 rows in set (0.00 sec)









mysql> SELECT *, (SELECT MIN(salary) FROM employee AS e2 WHERE e2.dept_id = e1.dept_id ) AS
 department_highest_salary  FROM employee AS e1;
+--------+----------+----------+---------+---------------------------+
| emp_id | emp_name | salary   | dept_id | department_highest_salary |
+--------+----------+----------+---------+---------------------------+
|    101 | Amit     | 30000.00 |       1 |                  28000.00 |
|    102 | Rahul    | 50000.00 |       2 |                  40000.00 |
|    103 | Priya    | 40000.00 |       2 |                  40000.00 |
|    104 | Neha     | 60000.00 |       3 |                  35000.00 |
|    105 | Rohit    | 35000.00 |       3 |                  35000.00 |
|    106 | Sneha    | 45000.00 |       4 |                  45000.00 |
|    107 | Karan    | 55000.00 |       4 |                  45000.00 |
|    108 | Pooja    | 28000.00 |       1 |                  28000.00 |
|    109 | Vijay    | 70000.00 |       2 |                  40000.00 |
|    110 | Ankit    | 32000.00 |       5 |                  25000.00 |
|    111 | Meena    | 65000.00 |       3 |                  35000.00 |
|    112 | Arjun    | 25000.00 |       5 |                  25000.00 |
+--------+----------+----------+---------+---------------------------+
12 rows in set (0.00 sec)







mysql> SELECT e.emp_id, e.emp_name, e.salary, (SELECT AVG(salary) FROM employee AS e2) AS company_average_salary  FROM employee AS e;
+--------+----------+----------+------------------------+
| emp_id | emp_name | salary   | company_average_salary |
+--------+----------+----------+------------------------+
|    101 | Amit     | 30000.00 |           44583.333333 |
|    102 | Rahul    | 50000.00 |           44583.333333 |
|    103 | Priya    | 40000.00 |           44583.333333 |
|    104 | Neha     | 60000.00 |           44583.333333 |
|    105 | Rohit    | 35000.00 |           44583.333333 |
|    106 | Sneha    | 45000.00 |           44583.333333 |
|    107 | Karan    | 55000.00 |           44583.333333 |
|    108 | Pooja    | 28000.00 |           44583.333333 |
|    109 | Vijay    | 70000.00 |           44583.333333 |
|    110 | Ankit    | 32000.00 |           44583.333333 |
|    111 | Meena    | 65000.00 |           44583.333333 |
|    112 | Arjun    | 25000.00 |           44583.333333 |
+--------+----------+----------+------------------------+
12 rows in set (0.00 sec)








mysql> SELECT e.emp_id, e.emp_name, e.salary, (SELECT dept_name FROM department AS d WHERE d.dept_id = e.dept_id) AS dept_name FROM employee AS e;
+--------+----------+----------+-----------+
| emp_id | emp_name | salary   | dept_name |
+--------+----------+----------+-----------+
|    101 | Amit     | 30000.00 | HR        |
|    102 | Rahul    | 50000.00 | IT        |
|    103 | Priya    | 40000.00 | IT        |
|    104 | Neha     | 60000.00 | Finance   |
|    105 | Rohit    | 35000.00 | Finance   |
|    106 | Sneha    | 45000.00 | Sales     |
|    107 | Karan    | 55000.00 | Sales     |
|    108 | Pooja    | 28000.00 | HR        |
|    109 | Vijay    | 70000.00 | IT        |
|    110 | Ankit    | 32000.00 | Admin     |
|    111 | Meena    | 65000.00 | Finance   |
|    112 | Arjun    | 25000.00 | Admin     |
+--------+----------+----------+-----------+
12 rows in set (0.00 sec)


till 45 complete