'''
ASSIGNMENT 2: 

Employee Payroll Management System (Method Overriding + Menu Driven)
Scenario
An IT company has three categories of employees.
Create a base class Employee.
Common Details
Employee ID
Name
Department
Derived Classes
FullTimeEmployee
Monthly Salary
Bonus
Salary Formula
Salary = Monthly Salary + Bonus
PartTimeEmployee
Hourly Rate
Total Hours Worked
Salary Formula
Salary = Hourly Rate × Hours
ContractEmployee
Project Name
Contract Amount
Salary Formula
Salary = Contract Amount
Functional Requirements
========== Payroll System ==========

1. Add Full Time Employee
2. Add Part Time Employee
3. Add Contract Employee
4. Display Full Time Salary
5. Display Part Time Salary
6. Display Contract Salary
7. Exit
Sample Input
Choice : 2

Employee ID : 205
Name : Aman Verma
Department : Testing

Hourly Rate : 350
Hours Worked : 160
Sample Output
Employee Added Successfully

Employee ID : 205
Name : Aman Verma
Department : Testing

Hourly Rate : 350
Hours Worked : 160

Total Salary : ₹56000
'''





class Employee:
    def __init__(self,employee_id, name, department):
        self.employee_id = employee_id
        self.name = name
        self.department = department 

    def finalsalary(self):
        self.salary = 0    


class FullTimeEmployee(Employee):
    
    def __init__(self ,employee_id, name, department, monthly_salary, bonus):
        super().__init__(employee_id, name, department)
        self.monthly_salary = monthly_salary
        self.bonus = bonus

    def finalsalary(self):    
        self.salary = self.monthly_salary + self.bonus

    def displayfull(self):
        print("Employee ID : ",self.employee_id)
        print("Name : ",self.name)
        print("Department : ",self.department)
        print("Monthly Salary : ",self.monthly_salary)
        print("Bonus : ",self.bonus)
        print(f"Total Salary : ₹{self.salary}")


class PartTimeEmployee(Employee):
    def __init__(self, employee_id, name, department, hourly_rate, total_work_hours):
        super().__init__(employee_id, name, department)
        self.hourly_rate = hourly_rate
        self.total_work_hours = total_work_hours
        
    def finalsalary(self):    
        self.salary = self.hourly_rate * self.total_work_hours

    def displaypart(self):
        print("Employee ID : ",self.employee_id)
        print("Name : ",self.name)
        print("Department : ",self.department)
        print("Hourly Rate : ",self.hourly_rate)
        print("Total Hours Worked : ",self.total_work_hours)
        print(f"Total Salary : ₹{self.salary}")    


class ContractEmployee(Employee):
    def __init__(self, employee_id, name, department, project_name, contract_amount):
        super().__init__(employee_id, name, department)
        self.project_name = project_name
        self.contract_amount = contract_amount

    def finalsalary(self):    
        self.salary = self.contract_amount

    def displaycontract(self):
        print("Employee ID : ",self.employee_id)
        print("Name : ",self.name)
        print("Department : ",self.department)
        print("Project Name : ",self.project_name)
        print("Contract Amount : ",self.contract_amount)
        print(f"Total Salary : ₹{self.salary}")


while True:
    print("""\n========== Payroll System ==========

1. Add Full Time Employee
2. Add Part Time Employee
3. Add Contract Employee
4. Display Full Time Salary
5. Display Part Time Salary
6. Display Contract Salary
7. Exit\n""")        
    
    choice = int(input("Enter your choice: "))
    print()
    match choice:

        case 1:
            idd = int(input("Enter Employee ID : "))
            name = input("Enter Name : ")
            depart = input("Enter Department : ")
            monthly = int(input("Enter Monthly Salary : "))
            bonus = int(input("Enter Bonus : "))
            f = FullTimeEmployee(idd, name, depart, monthly, bonus)
            print("\nEmployee Added Successfully")

        case 2:
            idd = int(input("Enter Employee ID : "))
            name = input("Enter Name : ")
            depart = input("Enter Department : ")
            hourly_rate = int(input("Enter Hourly Rate : "))
            work_hour = int(input("Enter Hours Worked : "))
            p = PartTimeEmployee(idd, name, depart, hourly_rate, work_hour)
            print("\nEmployee Added Successfully")   

        case 3:
            idd = int(input("Enter Employee ID : "))
            name = input("Enter Name : ")
            depart = input("Enter Department : ")
            pro_name = input("Enter Project Name : ")
            contract_amount = int(input("Enter Contract Amount : "))
            c = ContractEmployee(idd, name, depart, pro_name, contract_amount)
            print("\nEmployee Added Successfully")

        case 4:
            f.finalsalary()
            f.displayfull()

        case 5:
            p.finalsalary()
            p.displaypart()

        case 6:
            c.finalsalary()
            c.displaycontract() 

        case 7:
            print("Thank youuu......") 
            break

        case _:
            print("invalid choice....")