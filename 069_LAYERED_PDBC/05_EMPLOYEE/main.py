from service.employee_service import EmployeeService
from model.employee import Employee

print("welcome to our website")

while True:
    print()
    print("1. Display all employees")
    print("2. Add new Employee")    
    print("3. Search Employee by id")
    print("4. update Employee using id")
    print("5. delete Employee using id")
    print("6. EXIT")
    print()
    choice = int(input("Enter your choice: "))
    print()
    match choice:
        case 1:
            service = EmployeeService()
            employees = service.display_all_employees()
            for employee in employees:
            
                print("ID: ", employee.id)
                print("Name: ", employee.name)
                print("Salary: ", employee.salary)            

        case 2:
            service = EmployeeService()                    
            id = int(input("Enter id: "))
            name = input("Enter name: ")
            salary = float(input("Enter salary: "))
            employee = Employee(id, name, salary)
            service.add_employee(employee)            

        case 3:

            id = int(input("Enter employee id"))
            employee = service.search_employee_by_id(id)
            
            if employee is None:
                print("Employee not found")
            
            else:
                print("ID", employee.id)
                print("Name", employee.name)
                print("Salary", employee.salary)   

        case 4:
            id = int(input("Enter employee id: "))
            salary = float(input("Enter new salary: "))
            service = EmployeeService()
            service.change_employee_salary_by_id(id, salary)

        case 5:
            id = int(input("Enter employee id: "))
            service = EmployeeService()
            service.remove_student_by_roll_no(id)

        case 6:
            print("Thank youu....")
            break

        case _:
            print("invalid choice....")  
