'''
STUDENT RESULT MANAGEMENT SYSTEM

Scenario:

A college examination department wants to automate the process of generating student results. The staff should be able to enter student details, calculate marks, determine grades, and display a complete report card using a menu-driven application.

Develop a Python program using multiple user-defined functions and a menu-driven approach to perform the following operations.

MENU

1. Add Student Details
2. Calculate Total Marks
3. Calculate Percentage
4. Find Grade
5. Display Complete Result
6. Find Highest Subject Mark
7. Find Lowest Subject Mark
8. Exit

Functional Requirements

1. Add Student Details

   * Student Name
   * Roll Number
   * Marks of 5 Subjects

2. Calculate Total Marks

3. Calculate Percentage

4. Find Grade

5. Display Complete Result

6. Find Highest Subject Mark

7. Find Lowest Subject Mark

8. Exit

Grade Criteria

Percentage        Grade

90 - 100          A+
80 - 89           A
70 - 79           B
60 - 69           C
50 - 59           D
Below 50          Fail

Constraints

* Marks should be between 0 and 100.
* Display an appropriate message for invalid marks.
* The program should continue until the user chooses Exit.

Sample Input / Output

******** STUDENT RESULT MANAGEMENT ********

1. Add Student Details
2. Calculate Total Marks
3. Calculate Percentage
4. Find Grade
5. Display Result
6. Find Highest Mark
7. Find Lowest Mark
8. Exit

Enter Choice : 1

Enter Student Name : Ajay
Enter Roll Number : 101

Enter Mark 1 : 78
Enter Mark 2 : 85
Enter Mark 3 : 92
Enter Mark 4 : 88
Enter Mark 5 : 77

Student details added successfully.

Enter Choice : 2

Total Marks = 420

Enter Choice : 3

Percentage = 84.0

Enter Choice : 4

Grade = A

Enter Choice : 6

Highest Mark = 92

Enter Choice : 7

Lowest Mark = 77

Enter Choice : 5

----------- RESULT CARD -----------

Name        : Ajay
Roll Number : 101

Marks
Subject 1 : 78
Subject 2 : 85
Subject 3 : 92
Subject 4 : 88
Subject 5 : 77

Total Marks : 420
Percentage  : 84.0
Grade       : A
Highest Mark: 92
Lowest Mark : 77

Enter Choice : 8

Thank You. Program Terminated.

Important Instructions

1. The solution must be developed using multiple user-defined functions.
2. Use appropriate parameters wherever data needs to be passed between functions.
3. Use return statements wherever a function needs to send a result back to the caller.
4. Avoid using unnecessary global variables.
5. Implement the application using a menu-driven approach.
6. Perform proper input validation.
7. Write meaningful function names and maintain proper code readability.
'''


marks=[]

def total(l):
    return sum(l)

def percentage(l):
    return sum(l)/5

def grade(l):
    x=percentage(l)
    if x>=90:
        return "A+"
    elif x>=80:
        return "A"
    elif x>=70:
        return "B"
    elif x>=60:
        return "C"
    elif x>=50:
        return "D"
    else:
        return "Fail"
    
def highest(l):
    return max(l)

def lowest(l):
    return min(l)  

print("""\nMENU
1. Add Student Details
2. Calculate Total Marks
3. Calculate Percentage
4. Find Grade
5. Display Complete Result
6. Find Highest Subject Mark
7. Find Lowest Subject Mark
8. Exit""")
while True:

    choice=int(input("\nEnter choice: "))
    match choice:
        case 1:
            name=input("\nEnter Student Name : ")
            rollno=int(input("Enter Roll Number : "))
            print()
            for i in range(5):
                marks.append(int(input(f"Enter Mark {i+1} : ")))
            print("\nStudent details added successfully.")
            #print(marks)
        
        case 2:
            print("\nTotal Marks = ",total(marks))

        case 3:
            print("\nPercentage =",percentage(marks))    

        case 4:
            print("\nGrade = ",grade(marks))

        case 5:
            print("\n----------- RESULT CARD -----------\n")   
            print("Name".ljust(12," "),":",name)
            print("Roll Number".ljust(12," "),":",rollno ) 

            print("\nMarks")
            for i in range(len(marks)):
                print(f"Subject {i+1} :",marks[i])

            print("\nTotal Marks :",total(marks))    
            print("Percentage  :",percentage(marks))
            print("Grade       :",grade(marks))
            print("Highest Mark:",highest(marks))
            print("Lowest Mark :",lowest(marks))

        case 6:
            print("\nHighest Mark =",highest(marks))

        case 7:
            print("\nLowest Mark =",lowest(marks))        

        case 8:
            print("\nThank You. Program Terminated.")
            break

        case _:
            print("\nInvalid choice: ")        