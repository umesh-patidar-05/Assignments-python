'''
=========================================================
ASSIGNMENT 2: EMPLOYEE MANAGEMENT SYSTEM
=========================================================

--------
A company wants to maintain employee details, departments,
salaries, and cities using Python PDBC.

TABLE STRUCTURE
===============

Table Name: employee_pdbc

Column       Data Type
--------------------------------
eid          INT PRIMARY KEY
ename        VARCHAR(50)
department   VARCHAR(40)
salary       DECIMAL(10,2)
city         VARCHAR(30)


SAMPLE DATA
===========

eid   ename    department    salary      city
----------------------------------------------------
201   Amit     IT            45000.00    Indore
202   Priya    HR            40000.00    Bhopal
203   Rahul    IT            55000.00    Indore
204   Neha     Finance       50000.00    Ujjain
205   Karan    IT            60000.00    Indore


MENU
====

===== EMPLOYEE MANAGEMENT SYSTEM =====
1. Add Employee
2. Display All Employees
3. Search Employee by Name
4. Update Employee Salary
5. Delete Employee
6. Exit

Enter your choice:


TASK 1: ADD EMPLOYEE
====================

INPUT
-----
Enter your choice: 1
Enter Employee ID: 206
Enter Employee Name: Anjali
Enter Department: HR
Enter Salary: 42000
Enter City: Dewas

OUTPUT
------
Employee inserted successfully.


TASK 2: DISPLAY ALL EMPLOYEES
=============================

INPUT
-----
Enter your choice: 2

OUTPUT
------
ID    Name      Department    Salary      City
----------------------------------------------------
201   Amit      IT            45000.00    Indore
202   Priya     HR            40000.00    Bhopal
203   Rahul     IT            55000.00    Indore
204   Neha      Finance       50000.00    Ujjain
205   Karan     IT            60000.00    Indore
206   Anjali    HR            42000.00    Dewas

TASK 3: SEARCH EMPLOYEE BY NAME USING LIKE
==========================================

INPUT
-----
Enter your choice: 3
Enter name to search: ra

OUTPUT
------
Matching employees:

ID    Name      Department    Salary      City
----------------------------------------------------
203   Rahul     IT            55000.00    Indore
205   Karan     IT            60000.00    Indore

NOTE
----
Use:
WHERE ename LIKE %s

Pass:
'%' + search_name + '%'


TASK 4: UPDATE EMPLOYEE SALARY
=============================

INPUT
-----
Enter your choice: 4
Enter Employee ID: 201
Enter New Salary: 48000

OUTPUT
------
Employee salary updated successfully.


TASK 5: DELETE EMPLOYEE
=======================

INPUT
-----
Enter your choice: 5
Enter Employee ID: 202

OUTPUT
------
Employee deleted successfully.


TASK 6: EXIT
============

INPUT
-----
Enter your choice: 6

OUTPUT
------
Thank you for using Employee Management System.
'''












import mysql.connector
conn = mysql.connector.connect(host="localhost",port=3306,user="pythonuser",password="Python@1234",database="punishment")
    
cursor = conn.cursor()

while True:

    print()
    print("""===== EMPLOYEE MANAGEMENT SYSTEM =====
1. Add Employee
2. Display All Employees
3. Search Employee by Name
4. Update Employee Salary
5. Delete Employee
6. Exit""")
    print()
    choice = int(input("Enter your choice: "))
    print()
    match choice:
        case 1:

            idd = int(input("Enter Employee ID: "))           
            name = input("Enter Employee Name: ")
            department = input("Enter Department: ")
            salary = float(input("Enter Salary: "))
            city = input("Enter City: ")

            query = "INSERT INTO employee_pdbc VALUES(%s, %s, %s, %s, %s)"
            cursor.execute(query,(idd, name, department, salary, city))
            conn.commit()
            print()
            print("Employee inserted successfully.")


        case 2:

            query = "SELECT * FROM employee_pdbc"
            cursor.execute(query)
            rows = cursor.fetchall()
            print("-----------------------------------------------")
            print("ID    Name      Department    Salary       City")
            print("-----------------------------------------------")
            for row in rows:
                print(f"{row[0]}    {row[1]}      {row[2]}    {row[3]}       {row[4]}")
                

        case 3:

            name = input("Enter name to search: ")
            query = "SELECT * FROM employee_pdbc WHERE ename LIKE %s"

            cursor.execute(query, ("%"+name+"%",))
            rows = cursor.fetchall()

            print("-----------------------------------------------")
            print("ID    Name      Department    Salary       City")
            print("-----------------------------------------------")
            for row in rows:
                print(f"{row[0]}    {row[1]}      {row[2]}    {row[3]}       {row[4]}")


        case 4:

            idd = input("Enter Employee ID: ")
            salary = float(input("Enter New Salary: "))

            query = "UPDATE employee_pdbc SET salary = %s WHERE eid = %s"
            cursor.execute(query, (salary, idd)) 
            conn.commit()
            print()
            print("Employee salary updated successfully.")  


        case 5:

            idd = input("Enter Employee ID: ")

            query = "DELETE FROM employee_pdbc WHERE eid = %s"
            cursor.execute(query, (idd,))
            conn.commit()
            print()
            print("Employee deleted successfully.")


        case 6:
            print("Thank you for using Employee Management System.")
            
            break

        case _:
            print("invalid choice.....")