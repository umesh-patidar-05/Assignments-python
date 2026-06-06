'''
=====================================================================
QUESTION 1: EMPLOYEE SALARY ANALYSIS
====================================

A company wants to store employee details and generate salary reports using NamedTuple.

Fields:
emp_id, emp_name, department, salary 

Requirements:

1. Read N employee details from the user and store them in a list of NamedTuples.

---

2. Display all employee details.

---

3. Find and display the employee with the highest salary.

---

4. Find and display the employee with the lowest salary.

---

5. Calculate and display the average salary of all employees.

---

6. Accept a department name from the user and display all employees belonging to that department.

---

Test Case:

Input:
Enter number of employees: 4

101 Rahul IT 50000
102 Priya HR 45000
103 Amit IT 70000
104 Neha Finance 60000

Enter department: IT

Expected Output:
Highest Salary Employee:
103 Amit IT 70000

Lowest Salary Employee:
102 Priya HR 45000

Average Salary:
56250.0

Employees in IT Department:
101 Rahul IT 50000
103 Amit IT 70000
'''




from collections import namedtuple
employee=namedtuple("employee",["emp_id", "emp_name", "department", "salary"])
n=int(input("Enter number of employees: "))
emp=[]
for i in range(n):
    print(f"\nEnter employee {i+1} deatils ")
    idd=int(input("Enter id: "))
    name=input("Enter name: ")
    depar=input("Enter department: ")
    sal=int(input("Enter salary: "))
    emp.append(employee(idd,name,depar,sal))
#print(emp)

depart=input("\nEnter department: ")

print("\nEmployee details is: ")
for i in emp:
    print(i.emp_id,i.emp_name,i.department,i.salary)


high=0
small=emp[0].salary
summ=0
for i in emp:
    if i.salary>high:
        high=i.salary
    elif i.salary<small:
        small=i.salary
    summ+=i.salary    
print("\nHighest Salary Employee:")
for i in emp:
    if i.salary==high:
        print(i.emp_id,i.emp_name,i.department,i.salary)


print("\nLowest Salary Employee:")
for i in emp:
    if i.salary==small:
        print(i.emp_id,i.emp_name,i.department,i.salary)

avg=summ/n
print("\nAverage Salary:")
print(round(avg,2))

print(f"\nEmployees in {depart} Department:")
for i in emp:
    if i.department==depart:
        print(i.emp_id,i.emp_name,i.department,i.salary)






        