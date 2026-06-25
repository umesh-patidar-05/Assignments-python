'''
1.
Employee Record Sorting (Lambda)


A company stores employee details as (Name, Salary). The HR department wants to sort the employees based on salary.

Task

Write a Python program to sort the employee records using a lambda expression.

Input
employees = [("Rahul",45000),("Amit",30000),("Neha",55000),("Priya",40000)]
Output
[('Amit', 30000), ('Priya', 40000), ('Rahul', 45000), ('Neha', 55000)]
'''





n=int(input("Enter employee numbers: "))
employees=[]
for i in range(n):
    print(f"\nEnter employee {i+1} details")
    name=input("Enter name: ")
    salary=int(input("Enter salary: "))
    employees.append((name,salary))
print()
res=sorted(employees,key = lambda employee: employee[1])    
print(res)