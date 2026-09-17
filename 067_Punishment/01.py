'''
ASSIGNMENT 1: STUDENT MANAGEMENT SYSTEM
=======================================

-------
A coaching institute wants to manage student records using
Python Database Connectivity (PDBC).

TABLE STRUCTURE
===============

Table Name: student_pdbc

Column       Data Type
--------------------------------
sid          INT PRIMARY KEY
sname        VARCHAR(50)
course       VARCHAR(50)
fees         DECIMAL(10,2)
city         VARCHAR(30)


SAMPLE DATA
===========

sid   sname    course    fees       city
------------------------------------------------
101   Amit     Python    15000.00   Indore
102   Priya    Java      18000.00   Bhopal
103   Rahul    Python    15000.00   Indore
104   Neha     Java      18000.00   Ujjain
105   Karan    MERN      20000.00   Indore


MENU
====

===== STUDENT MANAGEMENT SYSTEM =====
1. Add Student
2. Display All Students
3. Search Student by Name
4. Update Student Fees
5. Delete Student
6. Exit

Enter your choice:


TASK 1: ADD STUDENT
===================

INPUT
-----
Enter your choice: 1
Enter Student ID: 106
Enter Student Name: Anjali
Enter Course: Python
Enter Fees: 15000
Enter City: Dewas

OUTPUT
------
Student inserted successfully.


TASK 2: DISPLAY ALL STUDENTS
============================

INPUT
-----
Enter your choice: 2

OUTPUT
------
ID    Name      Course    Fees       City
------------------------------------------------
101   Amit      Python    15000.00   Indore
102   Priya     Java      18000.00   Bhopal
103   Rahul     Python    15000.00   Indore
104   Neha      Java      18000.00   Ujjain
105   Karan     MERN      20000.00   Indore
106   Anjali    Python    15000.00   Dewas


TASK 3: SEARCH STUDENT BY NAME USING LIKE
=========================================

INPUT
-----
Enter your choice: 3
Enter name to search: an

OUTPUT
------
Matching students:

ID    Name      Course    Fees       City
------------------------------------------------
105   Karan     MERN      20000.00   Indore
106   Anjali    Python    15000.00   Dewas

NOTE
----
Use a parameterized query with:
WHERE sname LIKE %s

Pass the search pattern:
'%' + search_name + '%'


TASK 4: UPDATE STUDENT FEES
===========================

INPUT
-----
Enter your choice: 4
Enter Student ID: 101
Enter New Fees: 17000

OUTPUT
------
Student fees updated successfully.


TASK 5: DELETE STUDENT
======================

INPUT
-----
Enter your choice: 5
Enter Student ID: 104

OUTPUT
------
Student deleted successfully.


TASK 6: EXIT
============

INPUT
-----
Enter your choice: 6

OUTPUT
------
Thank you for using Student Management System.
'''




import mysql.connector
conn = mysql.connector.connect(host="localhost",port=3306,user="pythonuser",password="Python@1234",database="punishment")
    
cursor = conn.cursor()

while True:

    print()
    print("""===== STUDENT MANAGEMENT SYSTEM =====
    1. Add Student
    2. Display All Students
    3. Search Student by Name
    4. Update Student Fees
    5. Delete Student
    6. Exit""")
    print()
    choice = int(input("Enter your choice: "))
    print()
    match choice:
        case 1:

            idd = int(input("Enter Student ID: "))           
            name = input("Enter Student Name: ")
            course = input("Enter Course: ")
            fees = float(input("Enter Fees: "))
            city = input("Enter City: ")

            query = "INSERT INTO student_pdbc VALUES(%s, %s, %s, %s, %s)"
            cursor.execute(query,(idd, name, course, fees, city))
            conn.commit()
            print()
            print("Student inserted successfully.")


        case 2:

            query = "SELECT * FROM student_pdbc"
            cursor.execute(query)
            rows = cursor.fetchall()
            print("-----------------------------------------------")
            print("ID    Name      Course    Fees       City")
            print("-----------------------------------------------")
            for row in rows:
                print(f"{row[0]}    {row[1]}      {row[2]}    {row[3]}       {row[4]}")
                

        case 3:

            name = input("Enter name to search: ")
            query = "SELECT * FROM student_pdbc WHERE sname LIKE %s"

            cursor.execute(query, ("%"+name+"%",))
            rows = cursor.fetchall()

            print("-----------------------------------------------")
            print("ID    Name      Course    Fees       City")
            print("-----------------------------------------------")
            for row in rows:
                print(f"{row[0]}    {row[1]}      {row[2]}    {row[3]}       {row[4]}")


        case 4:

            idd = input("Enter Student ID: ")
            fees = float(input("Enter New Fees: "))

            query = "UPDATE student_pdbc SET fees = %s WHERE sid = %s"
            cursor.execute(query, (fees, idd)) 
            conn.commit()
            print()
            print("Student fees updated successfully.")  


        case 5:

            idd = input("Enter Student ID: ")

            query = "DELETE FROM student_pdbc WHERE sid = %s"
            cursor.execute(query, (idd,))
            conn.commit()
            print()
            print("Student deleted successfully.")


        case 6:
            print("Thank you for using Student Management System.")

            break

        case _:
            print("invalid choice.....")