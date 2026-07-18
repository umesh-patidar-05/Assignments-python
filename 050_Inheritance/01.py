'''
ASSIGNMENT 1: 

Hospital Management System (Single Inheritance)
Scenario
A software company has been hired to develop a Hospital Management System. Every person associated with the hospital has some common details, but each category has its own unique information.
Create a base class Person containing:
Person ID
Name
Age
Mobile Number
Create the following derived classes:
Doctor
Specialization
Experience (Years)
Consultation Fee
Nurse
Department
Shift (Day/Night)
Salary
Patient
Disease
Ward Number
Bill Amount
Functional Requirements
Create a menu-driven application.
========== Hospital Management ==========
1. Add Doctor
2. Add Nurse
3. Add Patient
4. Display Doctor Details
5. Display Nurse Details
6. Display Patient Details
7. Exit
Sample Input
Enter Choice : 1

Enter Doctor ID : 101
Enter Name : Rahul Sharma
Enter Age : 45
Enter Mobile : 9876543210
Enter Specialization : Cardiologist
Enter Experience : 18
Enter Consultation Fee : 1500
Sample Output
Doctor Added Successfully

----------- Doctor Details -----------

Doctor ID          : 101
Name               : Rahul Sharma
Age                : 45
Mobile             : 9876543210
Specialization     : Cardiologist
Experience         : 18 Years
Consultation Fee   : ₹1500
'''








class Person:

    def __init__(self, person_id, name, age, mobile_number):
        self.person_id = person_id
        self.name = name
        self.age = age
        self.mobile_number = mobile_number


class Doctor(Person):

    def __init__(self, person_id, name, age, mobile_number, Specialization, Experience, Consultation_fee):
        super().__init__(person_id, name, age, mobile_number)
        self.Specialization = Specialization
        self.Experience = Experience
        self.Consultation_fee = Consultation_fee

    def display_doctor(self):
        print("----------- Doctor Details -----------\n")
        print("Doctor ID          :",self.person_id)
        print("Name               :",self.name)
        print("Age                :",self.age)
        print("Mobile             :",self.mobile_number)
        print("Specialization     :",self.Specialization)
        print("Experience         :",self.Experience)
        print(f"Consultation Fee   : ₹{self.Consultation_fee}")


class Nurse(Person):

    def __init__(self, person_id, name, age, mobile_number, Department, Shift, Salary):
        super().__init__(person_id, name, age, mobile_number)
        self.Department = Department
        self.Shift = Shift
        self.Salary = Salary

    def display_nurse(self):
        print("----------- Nurse Details -----------\n")
        print("Nurse ID           :",self.person_id)
        print("Name               :",self.name)
        print("Age                :",self.age)
        print("Mobile             :",self.mobile_number)
        print("Department         :",self.Department)
        print("Shift              :",self.Shift)
        print(f"Salary             : ₹{self.Salary}")        


class Patient(Person):

    def __init__(self, person_id, name, age, mobile_number, Disease, Ward_Number, Bill_Amount):
        super().__init__(person_id, name, age, mobile_number)
        self.Disease = Disease
        self.Ward_Number = Ward_Number
        self.Bill_Amount = Bill_Amount

    def display_patient(self):
        print("----------- Patient Details -----------\n")
        print("Patient ID         :",self.person_id)
        print("Name               :",self.name)
        print("Age                :",self.age)
        print("Mobile             :",self.mobile_number)
        print("Disease            :",self.Disease)
        print("Ward Number        :",self.Ward_Number)
        print(f"Bill Amount        : ₹{self.Bill_Amount}") 


while True:
    print("""\n========== Hospital Management ==========
1. Add Doctor
2. Add Nurse
3. Add Patient
4. Display Doctor Details
5. Display Nurse Details
6. Display Patient Details
7. Exit""")        
    
    choice = int(input("\nEnter your choice : "))
    print()
    match choice:

        case 1:
            idd = int(input("Enter Doctor ID : "))
            name = input("Enter Name : ")
            age = int(input("Enter Age : "))
            mobile = int(input("Enter Mobile : "))
            special = input("Enter Specialization : ")
            experience = int(input("Enter Experience (Years) : "))
            consult = int(input("Enter Consultation Fee : "))
            d = Doctor(idd, name, age, mobile, special, experience, consult)
            print("\nDoctor Added Successfully")

        case 2:
            idd = int(input("Enter Nurse ID : "))
            name = input("Enter Name : ")
            age = int(input("Enter Age : "))
            mobile = int(input("Enter Mobile : "))
            department = input("Enter Department : ")
            shift = input("Enter Shift (Day/Night) : ")
            salary = int(input("Enter Salary : "))
            n = Nurse(idd, name, age, mobile, department, shift, salary)
            print("\nNurse Added Successfully")
          
        case 3:
            idd = int(input("Enter Patient ID : "))
            name = input("Enter Name : ")
            age = int(input("Enter Age : "))
            mobile = int(input("Enter Mobile : "))
            disease = input("Enter Disease : ")
            ward = int(input("Enter Ward Number : "))
            bill = int(input("Enter Bill Amount : "))
            p = Patient(idd, name, age, mobile, disease, ward, bill)
            print("\nPatient Added Successfully")   

        case 4:
            d.display_doctor()    

        case 5:
            n.display_nurse()

        case 6:
            p.display_patient()

        case 7:
            print("Thank youuuuu.....")
            break    

        case _:
            print("Invalid choice.... ")