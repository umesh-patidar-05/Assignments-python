============================================================
          MYSQL SUBQUERY –  ASSIGNMENT
============================================================

CASE STUDY: EMPLOYEE MANAGEMENT SYSTEM

ABC Technologies wants to develop an Employee Management System.
The company wants to perform different salary, department and
employee analysis using MySQL Subqueries.

You are given the following tables and data.


============================================================
TABLE 1: DEPARTMENT
============================================================

Table Name: department

Structure:

Column Name     Data Type          Description
------------------------------------------------------------
dept_id         INT                Department ID
dept_name       VARCHAR(30)        Department Name
location        VARCHAR(30)        Department Location


Data:

dept_id    dept_name       location
------------------------------------------------
1          HR              Indore
2          IT              Pune
3          Finance         Mumbai
4          Sales           Indore
5          Admin           Delhi
6          Research        Bangalore


============================================================
TABLE 2: EMPLOYEE
============================================================

Table Name: employee

Structure:

Column Name     Data Type          Description
------------------------------------------------------------
emp_id          INT                Employee ID
emp_name        VARCHAR(30)        Employee Name
salary          DECIMAL(10,2)      Employee Salary
dept_id         INT                Department ID


Data:

emp_id    emp_name     salary       dept_id
------------------------------------------------
101       Amit         30000        1
102       Rahul        50000        2
103       Priya        40000        2
104       Neha         60000        3
105       Rohit        35000        3
106       Sneha        45000        4
107       Karan        55000        4
108       Pooja        28000        1
109       Vijay        70000        2
110       Ankit        32000        5
111       Meena        65000        3
112       Arjun        25000        5


NOTE:
Department 6 currently has no employees.


============================================================
QUESTIONS
============================================================


Q1.
Display all employees whose salary is greater than the average
salary of all employees.


Q2.
Display the employee or employees who receive the highest salary
in the company.


Q3.
Display the employee or employees who receive the lowest salary
in the company.


Q4.
Display all employees whose salary is greater than the salary
of Amit.


Q5.
Display all employees whose salary is less than the salary
of Rahul.


Q6.
Display employees who work in departments located in Indore.

Expected columns:

emp_id
emp_name
salary
dept_id


Q7.
Display employees who work in the IT or Finance departments.

Do not directly specify department IDs such as 2,3.
Obtain the department IDs using a subquery.


Q8.
Display employees who do not work in departments located in
Indore.


Q9.
Display departments that currently have no employees.


Q10.
Display employees whose salary is greater than the average salary
of the IT department.


Q11.
Display employees whose salary is greater than the average salary
of the Finance department.


Q12.
Display employees whose salary is equal to the highest salary
in the IT department.


Q13.
Display employees whose salary is less than the lowest salary
in the Sales department.


Q14.
Display employees whose salary is greater than at least one
employee working in the HR department.


Q15.
Display employees whose salary is greater than every employee
working in the HR department.


Q16.
Display employees whose salary is less than at least one
employee working in the IT department.


Q17.
Display employees whose salary is greater than every employee
working in the Finance department.


Q18.
Display employees whose salary is below the salary of every
employee working in the IT department.


Q19.
Display employees whose salary is greater than their own
departments average salary.


Q20.
Display employees whose salary is less than their own
departments average salary.


Q21.
Display employees whose salary is exactly equal to their own
departments average salary.


Q22.
Display the employee or employees who receive the highest salary
in each department.

Expected columns:

emp_id
emp_name
salary
dept_id


Q23.
Display the employee or employees who receive the lowest salary
in each department.


Q24.
Display employees who are not the highest-paid employees of
their respective departments.


Q25.
Display employees who are not the lowest-paid employees of
their respective departments.


Q26.
Display the second-highest salary in the company.

Do not use LIMIT.


Q27.
Display the employee or employees having the second-highest
salary.

Do not use LIMIT.


Q28.
Display the third-highest salary in the company.

Do not use LIMIT.


Q29.
Display the employee or employees having the third-highest
salary.


Q30.
Display all departments for which at least one employee exists.


Q31.
Display all departments for which no employee exists.


Q32.
Display departments where at least one employee earns more
than 60000.


Q33.
Display departments where no employee earns more than 60000.


Q34.
Display departments where at least one employee earns less
than 30000.


Q35.
Display departments where no employee earns less than 30000.


Q36.
Display employees who belong to a department that exists in
the department table.


Q37.
Display employees whose salary is greater than their own
departments average salary.

Use a correlated subquery.


Q38.
Display employees whose salary is the maximum salary of their
department.

Use a correlated subquery.


Q39.
Display employees whose salary is the minimum salary of their
department.

Use a correlated subquery.


Q40.
Display each employee along with the average salary of his/her
department.

Expected columns:

emp_id
emp_name
salary
dept_id
department_average_salary


Q41.
Display each employee along with the highest salary in his/her
department.

Expected columns:

emp_id
emp_name
salary
dept_id
department_highest_salary


Q42.
Display each employee along with the lowest salary in his/her
department.

Expected columns:

emp_id
emp_name
salary
dept_id
department_lowest_salary


Q43.
Display each employee along with the companys overall average
salary.

Expected columns:

emp_id
emp_name
salary
company_average_salary


Q44.
Display each employee along with the difference between his/her
salary and the companys average salary.

Expected columns:

emp_id
emp_name
salary
salary_difference


Q45.
Display each employee along with the name of his/her department.

The department name must be obtained using a subquery.

Expected columns:

emp_id
emp_name
salary
dept_name


Q46.
Display departments whose average salary is greater than the
average salary of the entire company.


Q47.
Display departments whose average salary is less than the
average salary of the entire company.


mysql> SELECT dept_id, AVG(salary) FROM employee GROUP BY dept_id HAVING AVG(salary) < (SELECT AVG(salary) FROM employee);
+---------+--------------+
| dept_id | AVG(salary)  |
+---------+--------------+
|       1 | 29000.000000 |
|       5 | 28500.000000 |
+---------+--------------+
2 rows in set (0.00 sec)



Q48.
Display the department having the highest average salary.



mysql> select dept_id, avg(salary) as dept_avg_salary from employee group by dept_id order by dept_avg_salary desc limit 1;
+---------+-----------------+
| dept_id | dept_avg_salary |
+---------+-----------------+
|       2 |    53333.333333 |
+---------+-----------------+
1 row in set (0.00 sec)






Q49.
Display the department having the lowest average salary.


mysql> select dept_id, avg(salary) as dept_avg_salary from employee group by dept_id order by dept_avg_salary ASC limit 1;
+---------+-----------------+
| dept_id | dept_avg_salary |
+---------+-----------------+
|       5 |    28500.000000 |
+---------+-----------------+
1 row in set (0.00 sec)



Q50.
Display employees who work in the department having the
highest average salary.



mysql> SELECT emp_name FROM employee WHERE dept_id = (SELECT dept_id FROM employee GROUP BY dept_id ORDER BY AVG(salary) DESC LIMIT 1);
+----------+
| emp_name |
+----------+
| Rahul    |
| Priya    |
| Vijay    |
+----------+
3 rows in set (0.00 sec)






Q51.
Display employees who work in the department having the
lowest average salary.


mysql> SELECT emp_name FROM employee WHERE dept_id = (SELECT dept_id FROM employee GROUP BY dept_id ORDER BY AVG(salary)  LIMIT 1);
+----------+
| emp_name |
+----------+
| Ankit    |
| Arjun    |
+----------+
2 rows in set (0.00 sec)







Q52.
Display departments having more employees than the average
number of employees per department.



mysql> SELECT e.dept_id, count(*) AS employee_count FROM employee AS e GROUP BY e.dept_id HAVING count(*) > (SELECT AVG(emp_count) FROM ( SELECT COUNT(*) AS emp_count FROM employee GROUP BY dept_id) AS temp);
+---------+----------------+
| dept_id | employee_count |
+---------+----------------+
|       2 |              3 |
|       3 |              3 |
+---------+----------------+
2 rows in set (0.01 sec)





Q53.
Display departments where every employee earns more than 30000.




mysql> SELECT d.dept_name FROM department AS d JOIN employee AS e ON d.dept_id = e.dept_id GROUP BY d.dept_id HAVING MIN(e.salary) > 30000;
+-----------+
| dept_name |
+-----------+
| IT        |
| Finance   |
| Sales     |
+-----------+
3 rows in set (0.00 sec)




Q54.
Display departments where at least one employee earns more
than 50000 and at least one employee earns less than 35000.




mysql> SELECT d.dept_name FROM department AS d JOIN employee AS e ON d.dept_id = e.dept_id GROUP BY d.dept_id HAVING MAX(e.salary) > 50000 AND MIN(e.salary) < 35000;
Empty set (0.00 sec)






Q55.
Display departments where every employee earns less than 70000.


mysql> SELECT d.dept_name FROM department AS d JOIN employee AS e ON d.dept_id = e.dept_id GROUP BY d.dept_id HAVING MAX(e.salary) < 70000;
+-----------+
| dept_name |
+-----------+
| HR        |
| Finance   |
| Sales     |
| Admin     |
+-----------+
4 rows in set (0.00 sec)






Q56.
Display employees whose salary is greater than the average of
all department average salaries.


mysql> SELECT e.emp_name, e.salary FROM employee AS e WHERE e.salary > (SELECT AVG(dept_avg) FROM (SELECT AVG(salary) AS dept_avg FROM employee GROUP BY dept_id) AS temp);
+----------+----------+
| emp_name | salary   |
+----------+----------+
| Rahul    | 50000.00 |
| Neha     | 60000.00 |
| Sneha    | 45000.00 |
| Karan    | 55000.00 |
| Vijay    | 70000.00 |
| Meena    | 65000.00 |
+----------+----------+
6 rows in set (0.00 sec)




Q57.
Display the department whose maximum employee salary is the
highest among all departments.


mysql> SELECT d.dept_name, e.salary FROM employee AS e JOIN department AS d ON d.dept_id = e.dept_id WHERE e.salary = (SELECT MAX(dept_salary) FROM (SELECT MAX(salary) AS dept_salary FROM employee GROUP BY dept_id ) AS temp);
+-----------+----------+
| dept_name | salary   |
+-----------+----------+
| IT        | 70000.00 |
+-----------+----------+
1 row in set (0.00 sec)





Q58.
Display the department whose minimum employee salary is the
lowest among all departments.


mysql> SELECT d.dept_name, e.salary FROM employee AS e JOIN department AS d ON d.dept_id = e.dept_id WHERE e.salary = (SELECT MIN(dept_salary) FROM (SELECT MIN(salary) AS dept_salary FROM employee GROUP BY dept_id ) AS temp);
+-----------+----------+
| dept_name | salary   |
+-----------+----------+
| Admin     | 25000.00 |
+-----------+----------+
1 row in set (0.00 sec)





Q59.
Display employees whose salary is greater than the maximum
salary of the HR department.


mysql>  SELECT e.emp_name, e.salary FROM employee AS e WHERE salary > (SELECT MAX(salary) FROM employee WHERE dept_id = (SELECT dept_id FROM department WHERE dept_name = 'HR'));
+----------+----------+
| emp_name | salary   |
+----------+----------+
| Rahul    | 50000.00 |
| Priya    | 40000.00 |
| Neha     | 60000.00 |
| Rohit    | 35000.00 |
| Sneha    | 45000.00 |
| Karan    | 55000.00 |
| Vijay    | 70000.00 |
| Ankit    | 32000.00 |
| Meena    | 65000.00 |
+----------+----------+
9 rows in set (0.00 sec)






Q60.
Display employees whose salary is less than the minimum salary
of the Finance department.


mysql>  SELECT e.emp_name, e.salary FROM employee AS e WHERE salary < (SELECT MIN(salary) FROM employee WHERE dept_id = (SELECT dept_id FROM department WHERE dept_name = 'Finance'));
+----------+----------+
| emp_name | salary   |
+----------+----------+
| Amit     | 30000.00 |
| Pooja    | 28000.00 |
| Ankit    | 32000.00 |
| Arjun    | 25000.00 |
+----------+----------+
4 rows in set (0.00 sec)









Q61.
Display employees whose salary is greater than every employee
in HR but less than the salary of at least one employee in IT.


mysql> SELECT e.emp_name, e.salary FROM employee AS e WHERE e.salary >ALL (SELECT salary FROM employee WHERE dept_id = (SELECT dept_id FROM department WHERE dept_name = 'HR')) AND e.salary < ANY (SELECT salary FROM employee WHERE dept_id = (SELECT dept_id FROM department WHERE dept_name = 'IT'));
+----------+----------+
| emp_name | salary   |
+----------+----------+
| Rahul    | 50000.00 |
| Priya    | 40000.00 |
| Neha     | 60000.00 |
| Rohit    | 35000.00 |
| Sneha    | 45000.00 |
| Karan    | 55000.00 |
| Ankit    | 32000.00 |
| Meena    | 65000.00 |
+----------+----------+
8 rows in set (0.02 sec)





Q62.
Display employees whose salary is greater than at least one
employee in Finance but less than every employee in IT.


mysql> SELECT e.emp_name, e.salary FROM employee AS e WHERE e.salary >ANY (SELECT salary FROM employee WHERE dept_id = (SELECT dept_id FROM department WHERE dept_name = 'Finance')) AND e.salary < ALL (SELECT salary FROM employee WHERE dept_id = (SELECT dept_id FROM department WHERE dept_name = 'IT'));
Empty set (0.00 sec)






Q63.
Display employees who work in departments where the departments
average salary is greater than 40000.


mysql> SELECT e.emp_name, e.salary FROM employee AS e WHERE e.dept_id IN ( SELECT dept_id FROM employee GROUP BY dept_id HAVING AVG(salary) > 40000);
+----------+----------+
| emp_name | salary   |
+----------+----------+
| Rahul    | 50000.00 |
| Priya    | 40000.00 |
| Neha     | 60000.00 |
| Rohit    | 35000.00 |
| Sneha    | 45000.00 |
| Karan    | 55000.00 |
| Vijay    | 70000.00 |
| Meena    | 65000.00 |
+----------+----------+
8 rows in set (0.00 sec)







Q64.
Display departments where the average salary is greater than
40000 and at least one employee earns more than 60000.


mysql> SELECT d.dept_name, AVG(e.salary) AS avg_sal FROM employee AS e JOIN department AS d ON d.dept_id = e.dept_id GROUP BY d.dept_name HAVING avg_sal > 40000 AND MAX(salary) > 60000;
+-----------+--------------+
| dept_name | avg_sal      |
+-----------+--------------+
| IT        | 53333.333333 |
| Finance   | 53333.333333 |
+-----------+--------------+
2 rows in set (0.00 sec)






Q65.
Display employees whose salary is greater than their department
average salary but less than the companys overall average salary.



mysql> SELECT e.emp_name, e.salary FROM employee AS e WHERE e.salary > (SELECT AVG(salary) FROM employee WHERE dept_id = e.dept_id) AND e.salary < (SELECT AVG(salary) FROM employee);
+----------+----------+
| emp_name | salary   |
+----------+----------+
| Amit     | 30000.00 |
| Ankit    | 32000.00 |
+----------+----------+
2 rows in set (0.00 sec)







Q66.
Display employees whose salary is less than their department
average salary but greater than the companys overall average
salary.


mysql> SELECT e.emp_name, e.salary FROM employee AS e WHERE e.salary < (SELECT AVG(salary) FROM employee WHERE dept_id = e.dept_id) AND e.salary > (SELECT AVG(salary) FROM employee);
+----------+----------+
| emp_name | salary   |
+----------+----------+
| Rahul    | 50000.00 |
| Sneha    | 45000.00 |
+----------+----------+
2 rows in set (0.00 sec)







Q67.
Display the highest-paid employee from each department without
using GROUP BY to directly select the employee.

mysql> SELECT e.emp_name, e.salary FROM employee AS e WHERE e.salary = (SELECT MAX(salary) FROM employee WHERE dept_id = e.dept_id);
+----------+----------+
| emp_name | salary   |
+----------+----------+
| Amit     | 30000.00 |
| Karan    | 55000.00 |
| Vijay    | 70000.00 |
| Ankit    | 32000.00 |
| Meena    | 65000.00 |
+----------+----------+
5 rows in set (0.00 sec)





Q68.
Display the second-highest salary employee from each department.


mysql> SELECT e.emp_name, e.salary, dept_id FROM employee AS e WHERE e.salary = (SELECT MAX(salary) FROM employee WHERE dept_id = e.dept_id AND salary < (SELECT MAX(salary) FROM employee WHERE dept_id = e.dept_id));
+----------+----------+---------+
| emp_name | salary   | dept_id |
+----------+----------+---------+
| Rahul    | 50000.00 |       2 |
| Neha     | 60000.00 |       3 |
| Sneha    | 45000.00 |       4 |
| Pooja    | 28000.00 |       1 |
| Arjun    | 25000.00 |       5 |
+----------+----------+---------+
5 rows in set (0.00 sec)




Q69.
Display departments that have at least two employees.


mysql> SELECT d.dept_name, COUNT(e.dept_id) AS emp_count FROM employee AS e JOIN department AS d ON d.dept_id = e.dept_id GROUP BY d.dept_name HAVING emp_count >= 2;
+-----------+-----------+
| dept_name | emp_count |
+-----------+-----------+
| HR        |         2 |
| IT        |         3 |
| Finance   |         3 |
| Sales     |         2 |
| Admin     |         2 |
+-----------+-----------+
5 rows in set (0.00 sec)





Q70.
Display employees working in departments that have more employees
than the HR department.


mysql> SELECT e.emp_name, e.salary FROM employee AS e WHERE e.dept_id IN (SELECT dept_id FROM employee WHERE dept_id = e.dept_id GROUP BY dept_id HAVING COUNT(*) > (SELECT COUNT(*) FROM employee WHERE dept_id = (SELECT dept_id FROM department WHERE dept_name = 'HR')));
+----------+----------+
| emp_name | salary   |
+----------+----------+
| Rahul    | 50000.00 |
| Priya    | 40000.00 |
| Neha     | 60000.00 |
| Rohit    | 35000.00 |
| Vijay    | 70000.00 |
| Meena    | 65000.00 |
+----------+----------+
6 rows in set (0.00 sec)










Q71.
Display employees working in departments that have fewer employees
than the IT department.


mysql> SELECT e.emp_name FROM employee AS e WHERE e.dept_id IN ( SELECT dept_id FROM employee WHERE dept_id = e.dept_id HAVING COUNT(*) < (SELECT COUNT(*) FROM employee WHERE dept_id = (SELECT dept_id FROM department WHERE dept_name = 'IT')));
+----------+
| emp_name |
+----------+
| Amit     |
| Sneha    |
| Karan    |
| Pooja    |
| Ankit    |
| Arjun    |
+----------+
6 rows in set (0.01 sec)






Q72.
Display the department(s) having the same average salary as the
Finance department.


mysql> SELECT d.dept_name, AVG(e.salary) FROM employee AS e JOIN department AS d ON d.dept_id = e.dept_id GROUP BY d.dept_id HAVING AVG(e.salary) = (SELECT AVG(salary) FROM employee WHERE dept_id = (SELECT dept_id FROM department WHERE dept_name = 'Finance'));
+-----------+---------------+
| dept_name | AVG(e.salary) |
+-----------+---------------+
| IT        |  53333.333333 |
| Finance   |  53333.333333 |
+-----------+---------------+
2 rows in set (0.00 sec)





Q73.
Display employees whose salary is equal to the highest salary
of any department other than their own department.


mysql> SELECT e.emp_name, e.salary FROM employee AS e WHERE e.salary = (SELECT MAX(salary) FROM employee WHERE dept_id != e.dept_id );
Empty set (0.00 sec)






Q74.
Display employees whose salary is greater than the average salary
of every department.


mysql> SELECT e.emp_name, e.salary FROM employee AS e WHERE e.salary >ALL (SELECT AVG(salary) FROM employee GROUP BY dept_id);
+----------+----------+
| emp_name | salary   |
+----------+----------+
| Neha     | 60000.00 |
| Karan    | 55000.00 |
| Vijay    | 70000.00 |
| Meena    | 65000.00 |
+----------+----------+
4 rows in set (0.00 sec)






Q75.
Display employees whose salary is greater than the average salary
of at least one department.


mysql> SELECT e.emp_name, e.salary FROM employee AS e WHERE e.salary >ANY (SELECT AVG(salary) FROM employee GROUP BY dept_id);
+----------+----------+
| emp_name | salary   |
+----------+----------+
| Amit     | 30000.00 |
| Rahul    | 50000.00 |
| Priya    | 40000.00 |
| Neha     | 60000.00 |
| Rohit    | 35000.00 |
| Sneha    | 45000.00 |
| Karan    | 55000.00 |
| Vijay    | 70000.00 |
| Ankit    | 32000.00 |
| Meena    | 65000.00 |
+----------+----------+
10 rows in set (0.00 sec)




Q76.
Display the employee whose salary is closest to the companys
average salary.


mysql> SELECT e.emp_name, e.salary FROM employee AS e ORDER BY ABS(e.salary - (SELECT AVG(salary) FROM employee)) LIMIT 1;
+----------+----------+
| emp_name | salary   |
+----------+----------+
| Sneha    | 45000.00 |
+----------+----------+
1 row in set (0.01 sec)





Q77.
Display the department whose average salary is closest to the
companys overall average salary.



mysql> SELECT d.dept_name, AVG(e.salary) AS avg_sal FROM employee AS e JOIN department AS d ON d.dept_id = e.dept_id GROUP BY d.dept_name ORDER BY ABS(avg_sal - (SELECT AVG(salary) FROM employee)) LIMIT 1;
+-----------+--------------+
| dept_name | avg_sal      |
+-----------+--------------+
| Sales     | 50000.000000 |
+-----------+--------------+
1 row in set (0.01 sec)







Q78.
Display employees who are earning more than the average salary
of all employees but are not the highest-paid employee.


mysql> SELECT e.emp_name, e.salary FROM employee AS e WHERE e.salary > (SELECT AVG(salary) FROM employee) AND e.salary != (SELECT MAX(salary) FROM employee);
+----------+----------+
| emp_name | salary   |
+----------+----------+
| Rahul    | 50000.00 |
| Neha     | 60000.00 |
| Sneha    | 45000.00 |
| Karan    | 55000.00 |
| Meena    | 65000.00 |
+----------+----------+
5 rows in set (0.00 sec)





Q79.
Display employees who earn more than the average salary of their
department and whose department has at least two employees.


mysql> SELECT e.emp_name, e.salary AS emp_count FROM employee AS e WHERE e.salary > (SELECT AVG(salary) FROM employee WHERE dept_id = e.dept_id) AND (SELECT COUNT(*) FROM employee WHERE dept_id = e.dept_id) >= 2;
+----------+-----------+
| emp_name | emp_count |
+----------+-----------+
| Amit     |  30000.00 |
| Neha     |  60000.00 |
| Karan    |  55000.00 |
| Vijay    |  70000.00 |
| Ankit    |  32000.00 |
| Meena    |  65000.00 |
+----------+-----------+
6 rows in set (0.00 sec)








Q80.
Find employees who satisfy ALL of the following conditions:

1. Salary is greater than the company average salary.
2. Salary is greater than their department average salary.
3. Their department has at least two employees.
4. They are not the highest-paid employee in the company.



mysql> SELECT * FROM employee AS e WHERE e.salary > (SELECT AVG(salary) FROM employee) AND e.salary > (SELECT AVG(salary) FROM employee WHERE dept_id = e.dept_id) AND (SELECT COUNT(*) FROM employee WHERE dept_id = e.dept_id) > -2 AND salary != (SELECT MAX(salary) FROM employee);
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    104 | Neha     | 60000.00 |       3 |
|    107 | Karan    | 55000.00 |       4 |
|    111 | Meena    | 65000.00 |       3 |
+--------+----------+----------+---------+
3 rows in set (0.00 sec)





============================================================
CHALLENGE QUESTIONS
============================================================




Q81.
Find the department having the second-highest average salary.

mysql> SELECT d.dept_name , AVG(e.salary) FROM employee AS e JOIN department AS d ON d.dept_id = e.dept_id GROUP BY d.dept_name HAVING AVG(salary) < (SELECT MAX(max_avg) FROM (SELECT AVG(salary) AS max_avg FROM employee GROUP BY dept_id) AS temp)ORDER BY AVG(e.salary) DESC LIMIT 1;
+-----------+---------------+
| dept_name | AVG(e.salary) |
+-----------+---------------+
| Sales     |  50000.000000 |
+-----------+---------------+
1 row in set (0.00 sec)





Q82.
Find the employee working in the department having the
second-highest average salary.


mysql> SELECT e.emp_name, d.dept_name, e.salary
    -> FROM employee AS e
    -> JOIN department AS d
    -> ON d.dept_id = e.dept_id
    -> WHERE e.dept_id = (
    ->     SELECT dept_id
    ->     FROM employee
    ->     GROUP BY dept_id
    ->     HAVING AVG(salary) = (
    ->         SELECT MAX(avg_dept)
    ->         FROM (
    ->             SELECT AVG(salary) AS avg_dept
    ->             FROM employee
    ->             GROUP BY dept_id
    ->             HAVING AVG(salary) < (
    ->                 SELECT MAX(avg_dept)
    ->                 FROM (
    ->                     SELECT AVG(salary) AS avg_dept
    ->                     FROM employee
    ->                     GROUP BY dept_id
    ->                 ) AS temp2
    ->             )
    ->         ) AS temp
    ->     )
    -> );
+----------+-----------+----------+
| emp_name | dept_name | salary   |
+----------+-----------+----------+
| Sneha    | Sales     | 45000.00 |
| Karan    | Sales     | 55000.00 |
+----------+-----------+----------+
2 rows in set (0.00 sec)







Q83.
Find the second-highest salary employee from every department.



mysql> SELECT e.emp_name, e.salary FROM employee AS e WHERE e.salary = (
    -> SELECT MAX(salary) FROM employee WHERE dept_id = e.dept_id
    -> AND salary < (SELECT MAX(salary) FROM employee WHERE dept_id = e.dept_id));
+----------+----------+
| emp_name | salary   |
+----------+----------+
| Rahul    | 50000.00 |
| Neha     | 60000.00 |
| Sneha    | 45000.00 |
| Pooja    | 28000.00 |
| Arjun    | 25000.00 |
+----------+----------+
5 rows in set (0.00 sec)





Q84.
Find the department having the second-highest maximum salary.


mysql> SELECT d.dept_name, MAX(e.salary) AS max_salary FROM employee AS e JOIN department AS d ON d.dept_id = e.dept_id GROUP BY d.dept_name ORDER BY max_salary DESC LIMIT 1 OFFSET 1;
+-----------+------------+
| dept_name | max_salary |
+-----------+------------+
| Finance   |   65000.00 |
+-----------+------------+
1 row in set (0.00 sec)






Q85.
Find employees whose salary is greater than the average salary
of the department having the second-highest average salary.




mysql> SELECT e.emp_name, e.salary FROM employee AS e WHERE salary > ( SELECT MAX(avg_salary) FROM (SELECT AVG(salary) AS avg_salary FROM employee GROUP BY dept_id ORDER BY avg_salary DESC LIMIT 1  OFFSET 1 )AS temp );
+----------+----------+
| emp_name | salary   |
+----------+----------+
| Neha     | 60000.00 |
| Karan    | 55000.00 |
| Vijay    | 70000.00 |
| Meena    | 65000.00 |
+----------+----------+
4 rows in set (0.00 sec)



mysql> SELECT e.emp_name, e.salary FROM employee AS e WHERE salary > (SELECT AVG(salary) AS avg_salary FROM employee GROUP BY dept_id ORDER BY avg_salary DESC LIMIT 1  OFFSET 1 );
+----------+----------+
| emp_name | salary   |
+----------+----------+
| Neha     | 60000.00 |
| Karan    | 55000.00 |
| Vijay    | 70000.00 |
| Meena    | 65000.00 |
+----------+----------+
4 rows in set (0.00 sec)







Q86.
Find the employee(s) whose salary is closest to the highest
salary in the company without being the highest-paid employee.



mysql> SELECT e.emp_name, e.salary FROM employee AS e ORDER BY ABS(e.salary - (SELECT MAX(salary) FROM employee WHERE salary < (SELECT MAX(salary) FROM employee))) LIMIT 1;
+----------+----------+
| emp_name | salary   |
+----------+----------+
| Meena    | 65000.00 |
+----------+----------+
1 row in set (0.00 sec)









Q87.
Find departments where the difference between the highest and
lowest salary is greater than 30000.


mysql> SELECT d.dept_name, MIN(e.salary) AS min_sal, MAX(e.salary) AS max_sal FROM employee AS e JOIN department AS d ON d.dept_id = e.dept_id GROUP BY d.dept_id HAVING ( max_sal - min_sal) > 30000;
Empty set (0.00 sec)





Q88.
Find employees whose salary is above their department average
and whose salary difference from the department average is
greater than 10000.


mysql> SELECT e.* FROM employee AS e WHERE e.salary > (SELECT AVG(salary) FROM employee WHERE dept_id = e.dept_id) AND ABS(e.salary - (SELECT AVG(salary) FROM employee WHERE dept_id
= e.dept_id)) > 10000;
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    109 | Vijay    | 70000.00 |       2 |
|    111 | Meena    | 65000.00 |       3 |
+--------+----------+----------+---------+
2 rows in set (0.00 sec)







Q89.
Find the department(s) where the highest-paid employee earns
more than the highest-paid employee of the HR department.


mysql> SELECT d.dept_name, MAX(e.salary) AS max_sal FROM employee AS e JOIN department AS d
 ON d.dept_id = e.dept_id GROUP BY d.dept_id HAVING max_sal > (SELECT MAX(salary) FROM employee WHERE dept_id = (SELECT dept_id FROM department WHERE dept_name = 'HR'));
+-----------+----------+
| dept_name | max_sal  |
+-----------+----------+
| IT        | 70000.00 |
| Finance   | 65000.00 |
| Sales     | 55000.00 |
| Admin     | 32000.00 |
+-----------+----------+
4 rows in set (0.01 sec)







Q90.
Find employees who earn more than every employee in HR,
Finance, and Sales.


mysql> SELECT e.* FROM employee AS e WHERE e.salary > (SELECT MAX(salary) FROM employee WHERE dept_id IN (SELECT dept_id FROM department WHERE dept_name IN ('HR', 'Finance','Sales')));
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    109 | Vijay    | 70000.00 |       2 |
+--------+----------+----------+---------+
1 row in set (0.00 sec)











============================================================
FINAL INTERVIEW CHALLENGE
============================================================


Q91.
Without using:

JOIN
LIMIT
WINDOW FUNCTIONS



Find the employee having the third-highest distinct salary.

mysql> SELECT e.* FROM employee AS e WHERE e.salary = (SELECT DISTINCT salary FROM employee
 ORDER BY salary DESC limit 1 OFFSET 3);
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    107 | Karan    | 55000.00 |       4 |
+--------+----------+----------+---------+
1 row in set (0.00 sec)






Q92.
Without using LIMIT or Window Functions, find the employee
having the second-highest salary in each department.


mysql> SELECT e.* FROM employee AS e WHERE e.salary = (SELECT MAX(e1.salary) FROM employee
AS e1 WHERE e1.dept_id = e.dept_id AND e1.salary < (SELECT MAX(salary) FROM employee WHERE
dept_id = e1.dept_id));
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    102 | Rahul    | 50000.00 |       2 |
|    104 | Neha     | 60000.00 |       3 |
|    106 | Sneha    | 45000.00 |       4 |
|    108 | Pooja    | 28000.00 |       1 |
|    112 | Arjun    | 25000.00 |       5 |
+--------+----------+----------+---------+
5 rows in set (0.00 sec)









Q93.
Find the department(s) in which every employee earns more than
the companys average salary.


mysql> SELECT d.dept_name FROM department AS d JOIN employee AS e ON d.dept_id = e.dept_id GROUP BY d.dept_name HAVING MIN(salary) > (SELECT AVG(salary) FROM employee);
+-----------+
| dept_name |
+-----------+
| Sales     |
+-----------+
1 row in set (0.00 sec)








Q94.
Find the department(s) in which at least one employee earns more
than the companys average salary and at least one employee earns
less than the companys average salary.



mysql> SELECT d.dept_name FROM department AS d JOIN employee AS e ON e.dept_id = d.dept_id
GROUP BY d.dept_id HAVING MAX(salary) > (SELECT AVG(salary) FROM employee) AND MIN(salary)
< (SELECT AVG(salary) FROM employee);
+-----------+
| dept_name |
+-----------+
| IT        |
| Finance   |
+-----------+
2 rows in set (0.00 sec)








Q95.
Find employees whose salary satisfies all the following:

1. Greater than their department average.
2. Greater than the company average.
3. Less than the highest salary in the company.



mysql> SELECT e.* FROM employee AS e WHERE e.salary > (SELECT AVG(salary) FROM employee WHERE dept_id = e.dept_id) AND e.salary > (SELECT AVG(salary) FROM employee) AND e.salary < (SELECT MAX(salary) FROM employee);
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    104 | Neha     | 60000.00 |       3 |
|    107 | Karan    | 55000.00 |       4 |
|    111 | Meena    | 65000.00 |       3 |
+--------+----------+----------+---------+
3 rows in set (0.01 sec)







Q96.
Find the department having the highest average salary and then
display all employees belonging to that department along with
their salary.



mysql> SELECT e.*
    -> FROM employee AS e
    -> WHERE e.dept_id IN (
    ->     SELECT e1.dept_id
    ->     FROM employee AS e1
    ->     GROUP BY e1.dept_id
    ->     HAVING NOT EXISTS (
    ->         SELECT 1
    ->         FROM employee AS e2
    ->         GROUP BY e2.dept_id
    ->         HAVING AVG(e2.salary) > AVG(e1.salary)
    ->     )
    -> );
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    102 | Rahul    | 50000.00 |       2 |
|    103 | Priya    | 40000.00 |       2 |
|    104 | Neha     | 60000.00 |       3 |
|    105 | Rohit    | 35000.00 |       3 |
|    109 | Vijay    | 70000.00 |       2 |
|    111 | Meena    | 65000.00 |       3 |
+--------+----------+----------+---------+
6 rows in set (0.00 sec)






Q97.
Find the department having the lowest average salary and then
display all employees belonging to that department.


mysql> SELECT e.* FROM employee AS e WHERE e.dept_id IN (SELECT dept_id FROM employee GROUP BY dept_id HAVING AVG(salary) = (SELECT AVG(salary) FROM employee GROUP BY dept_id ORDER BY AVG(salary) LIMIT 1));
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    110 | Ankit    | 32000.00 |       5 |
|    112 | Arjun    | 25000.00 |       5 |
+--------+----------+----------+---------+
2 rows in set (0.00 sec)









Q98.
Find the department with the highest number of employees and
display all employees belonging to that department.




mysql> SELECT e.*
    -> FROM employee AS e
    -> WHERE e.dept_id IN (
    ->     SELECT dept_id
    ->     FROM employee
    ->     GROUP BY dept_id
    ->     HAVING COUNT(*) = (
    ->         SELECT MAX(emp_count)
    ->         FROM (
    ->             SELECT dept_id, COUNT(*) AS emp_count
    ->             FROM employee
    ->             GROUP BY dept_id
    ->         ) AS temp
    ->     )
    -> );
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    102 | Rahul    | 50000.00 |       2 |
|    103 | Priya    | 40000.00 |       2 |
|    104 | Neha     | 60000.00 |       3 |
|    105 | Rohit    | 35000.00 |       3 |
|    109 | Vijay    | 70000.00 |       2 |
|    111 | Meena    | 65000.00 |       3 |
+--------+----------+----------+---------+
6 rows in set (0.00 sec)











Q99.
Find the department with the lowest number of employees,
excluding departments having zero employees, and display its
employees.




mysql> SELECT e.*
    -> FROM employee AS e
    -> WHERE e.dept_id IN (
    ->     SELECT dept_id
    ->     FROM employee
    ->     GROUP BY dept_id
    ->     HAVING COUNT(*) = (
    ->         SELECT MIN(emp_count)
    ->         FROM (
    ->             SELECT dept_id, COUNT(*) AS emp_count
    ->             FROM employee
    ->             GROUP BY dept_id
    ->         ) AS temp
    ->     )
    -> );
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    101 | Amit     | 30000.00 |       1 |
|    106 | Sneha    | 45000.00 |       4 |
|    107 | Karan    | 55000.00 |       4 |
|    108 | Pooja    | 28000.00 |       1 |
|    110 | Ankit    | 32000.00 |       5 |
|    112 | Arjun    | 25000.00 |       5 |
+--------+----------+----------+---------+
6 rows in set (0.00 sec)









Q100.
Find employees who satisfy ALL of the following conditions:

1. Salary is above their department average.
2. Salary is above the company average.
3. Employee is not the highest-paid employee of the department.
4. Employee works in a department having at least 2 employees.

Display:

emp_id
emp_name
salary
dept_id





mysql> SELECT e.*
    -> FROM employee AS e
    -> WHERE e.salary > (
    ->     SELECT AVG(e2.salary)
    ->     FROM employee AS e2
    ->     WHERE e2.dept_id = e.dept_id
    -> )
    -> AND e.salary > (
    ->     SELECT AVG(salary)
    ->     FROM employee
    -> )
    -> AND e.salary < (
    ->     SELECT MAX(e3.salary)
    ->     FROM employee AS e3
    ->     WHERE e3.dept_id = e.dept_id
    -> )
    -> AND e.dept_id IN (
    ->     SELECT dept_id
    ->     FROM employee
    ->     GROUP BY dept_id
    ->     HAVING COUNT(*) >= 2
    -> );
+--------+----------+----------+---------+
| emp_id | emp_name | salary   | dept_id |
+--------+----------+----------+---------+
|    104 | Neha     | 60000.00 |       3 |
+--------+----------+----------+---------+
1 row in set (0.01 sec)




============================================================