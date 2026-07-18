'''
ASSIGNMENT 5: 
School ERP System (Hierarchical Inheritance)
Scenario
A school is developing an ERP system.
Every person has common information.
Base Class
Person
Name
Age
Address
Derived Classes
Student
Roll Number
Course
Marks
Teacher
Employee ID
Subject
Salary
Principal
Office Number
Experience
Qualification
Functional Requirements
========== School ERP ==========
1. Add Student
2. Add Teacher
3. Add Principal
4. Display Student
5. Display Teacher
6. Display Principal
7. Exit
Sample Input
Choice : 1

Roll Number : 102
Name : Riya Sharma
Age : 20
Address : Indore

Course : Python Full Stack
Marks : 89
Sample Output
----------- Student Details -----------

Roll Number : 102
Name : Riya Sharma
Age : 20
Address : Indore

Course : Python Full Stack
Marks : 89
'''




class Person:
    def __init__(self, name, age, address):
        self.name = name
        self.age = age
        self.address = address


class Student(Person):
    def __init__(self, name, age, address, roll_no, course, marks):
        super().__init__(name, age, address)
        self.roll_no = roll_no
        self.course = course
        self.marks = marks
    
    def display(self):
        print("----------- Student Details -----------\n")
        print("Roll Number : ", self.roll_no)
        print("Name : ", self.name)
        print("Age : ", self.age)
        print("Address : ", self.address)
        print()
        print("Course : ", self.course)
        print("Marks : ", self.marks)



class Teacher(Person):
    def __init__(self, name, age, address, employee_id, subject, salary):
        super().__init__(name, age, address)
        self.employee_id = employee_id
        self.subject = subject
        self.salary = salary

    def display(self):
        print("----------- Teacher Details -----------\n")
        print("Employee ID : ", self.employee_id)
        print("Name : ", self.name)
        print("Age : ", self.age)
        print("Address : ", self.address)
        print()
        print("Subject : ", self.subject)
        print("Salary : ", self.salary)        


class Principal(Person):
    def __init__(self, name, age, address, office_number, experience, qualification):
        super().__init__(name, age, address)
        self.office_number = office_number
        self.experience = experience
        self.qualification = qualification

    def display(self):
        print("----------- Principal Details -----------\n")
        print("Office Number : ", self.office_number)
        print("Name : ", self.name)
        print("Age : ", self.age)
        print("Address : ", self.address)
        print()
        print("Experience : ", self.experience)
        print("Qualification : ", self.qualification)


while True:
    print("""\n========== School ERP ==========
1. Add Student
2. Add Teacher
3. Add Principal
4. Display Student
5. Display Teacher
6. Display Principal
7. Exit\n""")

    choice = int(input("Enter choice: "))
    print()
    match choice:
        case 1:
            roll = int(input("Roll Number : "))
            name = input("Name : ")
            age = int(input("Age : "))
            address = input("Address : ")
            course = input("Course : ")
            marks = int(input("Marks : "))

            s = Student(name, age, address, roll, course, marks)

        case 2:
            id = int(input("Employee ID : "))
            name = input("Name : ")
            age = int(input("Age : "))
            address = input("Address : ")
            subject = input("Subject : ")
            salary = int(input("Salary : "))

            t = Teacher(name, age, address, id, subject, salary)

        case 3:
            no = int(input("Office Number : "))
            name = input("Name : ")
            age = int(input("Age : "))
            address = input("Address : ")
            experience = input("Experience : ")
            qualification = input("Qualification : ")

            p = Principal(name, age, address, no, experience, qualification)

        case 4:
            s.display()

        case 5:
            t.display()

        case 6:
            p.display()

        case 7:
            print("Thankyouuu........")
            break

        case _:
            print("invalid choice...")                
             
