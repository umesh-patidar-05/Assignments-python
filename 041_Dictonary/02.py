'''
ASSIGNMENT: ONLINE COURSE ENROLLMENT & STUDENT MANAGEMENT SYSTEM

A training institute offers multiple courses such as Python, Java, Full Stack Development, Data Science, and React.

Currently, student enrollment details are maintained manually in Excel sheets. As the number of students is increasing, the institute wants to develop a Student Management System using Python.

The system should store student records in a nested dictionary where:

Key → Student ID
Value → Dictionary containing student information

Each student record should contain:

Student Name
Course Name
Mobile Number
Fees
City
Sample Data Structure
{
101:{
    "name":"Ajay",
    "course":"Python",
    "mobile":"9876543210",
    "fees":25000,
    "city":"Indore"
},
102:{
    "name":"Ravi",
    "course":"Java",
    "mobile":"9876500000",
    "fees":22000,
    "city":"Bhopal"
}
}
Menu Driven Program

Display the following menu repeatedly until the user chooses Exit.

=========================================
 STUDENT MANAGEMENT SYSTEM
=========================================

1. Add New Student
2. Search Student
3. Update Course
4. Delete Student
5. Display All Students
6. Count Total Students
7. Display Students By Course
8. Display Students By City
9. Find Student Paying Highest Fees
10. Find Student Paying Lowest Fees
11. Exit
Functional Requirements
1. Add New Student

Accept the following details:

Student ID
Student Name
Course Name
Mobile Number
Fees
City

Store the information in the nested dictionary.

Validation

If Student ID already exists:

Student ID Already Exists
2. Search Student

Accept Student ID from the user.

If found, display complete student information.

Sample Output
Student ID : 101
Name       : Ajay
Course     : Python
Mobile     : 9876543210
Fees       : 25000
City       : Indore

If not found:

Student Not Found
3. Update Course

Accept Student ID.

If found:

Ask for new course name.
Update the course.
Sample Output
Course Updated Successfully
4. Delete Student

Accept Student ID.

If found:

Delete the record.
Sample Output
Student Deleted Successfully

Otherwise:

Student Not Found
5. Display All Students

Display all student records in a proper format.

Sample Output
-----------------------------------
Student ID : 101
Name       : Ajay
Course     : Python
Fees       : 25000
-----------------------------------

Student ID : 102
Name       : Ravi
Course     : Java
Fees       : 22000
-----------------------------------
6. Count Total Students

Display total number of students enrolled.

Sample Output
Total Students : 45
7. Display Students By Course

Accept a course name from the user.

Display all students enrolled in that course.

Sample Output
Enter Course : Python

101  Ajay
105  Neha
112  Aman

If no students are found:

No Students Found
8. Display Students By City

Accept city name from the user.

Display all students belonging to that city.

Sample Output
Enter City : Indore

101  Ajay
108  Ravi
115  Pooja
9. Find Student Paying Highest Fees

Display complete details of the student who has paid the highest fees.

Sample Output
Highest Fee Paying Student

Student ID : 121
Name       : Neha
Course     : Data Science
Fees       : 50000
10. Find Student Paying Lowest Fees

Display complete details of the student who has paid the lowest fees.

Sample Output
Lowest Fee Paying Student

Student ID : 131
Name       : Aman
Course     : React
Fees       : 15000
11. Exit

Terminate the application.

Sample Output
Thank You For Using Student Management System
'''





record={}
while True:
    print("""\n=========================================
 STUDENT MANAGEMENT SYSTEM
=========================================

\n1. Add New Student
2. Search Student
3. Update Course
4. Delete Student
5. Display All Students
6. Count Total Students
7. Display Students By Course
8. Display Students By City
9. Find Student Paying Highest Fees
10. Find Student Paying Lowest Fees
11. Exit""")
    
    choice=int(input("\nEnter your choice: "))
    match choice:
        case 1:
            data={}
            idd=int(input("\nEnter Student ID: "))
            if idd in record:
                print("\nStudent ID already exists")
            else:    
                nam=input("Enter Student Name: ")
                Cour=input("Enter Course Name: ")
                number=int(input("Enter Mobile Number: "))
                fee=int(input("Enter Fees: "))
                cit=input("Enter City: ")
                data={"name":nam, "Course":Cour, "Mobile":number, "Fees":fee, "City":cit}
                record[idd]=data
            print(record)

        case 2:
            find_id=int(input("\nEnter Student ID : "))
            if find_id in record:
                print("\nStudent ID :",find_id)
                for k,v in record[find_id].items():
                    print(k.ljust(10," "),":",v)
            else:
                print("\nStudent Not Found")        

        case 3:
            find_id=int(input("\nEnter Student Id: "))
            if find_id in record:
                new_cour=input("\nEnter new course name: ")  
                record[find_id]["Course"]=new_cour
                print("\nCourse Updated Successfully")
            else:
                print(f"\nStudent Not Found")  

        case 4:
            find_id=int(input("\nEnter Student Id: "))
            if find_id in record:
                del record[find_id]
                print("\nStudent Deleted Successfully")
            else:
                print("\nStudent Not Found")

        case 5:
            for k,v in record.items():
                print("\n----------------------------")
                print("Student ID :",k)
                for i,j in v.items():
                    print(i.ljust(10," "),":",j)
                print("----------------------------")

        case 6:
            print("\nTotal Students :",len(record))    

        case 7:
            find_cou=input("\nEnter Course : ")
            found=0
            for k,v in record.items():
                if find_cou in v["Course"]:
                    print(k,"  ",v["name"])
                    found=1
            if found==0:
                print("\nNo Students Found")        
        
        case 8:
            find_city=input("\nEnter City : ")
            found=0
            for k,v in record.items():
                if find_city in v["City"]:
                    print(k,"  ",v["name"])
                    found=1
            if found==0:
                print("\nNo Students Found") 

        case 9:
            if(len(record)!=0):
                highest=list(record.keys())[0]
                high=record[highest]["Fees"]
                for k,v in record.items():
                    if v["Fees"]>high:
                        highest=k
                        high=v["Fees"]
                print("\nHighest Fee Paying Student")        
                print("\nStudent ID :",highest)
                for k,v in record[highest].items():
                    print(k.ljust(10," "),":",v)       
            else: 
                print("\nNo Students Found: ")

        case 10:
            if(len(record)!=0):
                lowest=list(record.keys())[0]
                loww=record[lowest]["Fees"]
                for k,v in record.items():
                    if v["Fees"]<loww:
                        lowest=k
                        loww=v["Fees"]
                print("\nLowest Fee Paying Student")        
                print("\nStudent ID :",lowest)
                for k,v in record[lowest].items():
                    print(k.ljust(10," "),":",v) 
            else: 
                print("\nNo Students Found: ")         

        case 11:
            print("\nThank You For Using Student Management System")
            break    
        
        case _:
            print("\nInvalid choice: ")