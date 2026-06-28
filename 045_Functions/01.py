'''
Employee Data Processing System

A company stores information about its employees in two forms:

A list of employee ages.
A string containing employee names separated by spaces.

The HR department wants a Python application that can perform different operations on this data through a menu-driven system. To make the application modular and easy to maintain, each operation must be implemented using a separate function that accepts data as a parameter and returns the result.

Problem Statement

Develop a menu-driven Python application called Employee Data Processing System.

The program should allow the HR department to perform the following operations:

Functions on Employee Ages (List)
1. find_second_highest_age(age_list)
Accept a list of employee ages.
Return the second highest age.
2. count_senior_employees(age_list)
Accept a list of employee ages.
Consider employees aged 50 years or above as senior employees.
Return the count of senior employees.
3. remove_duplicate_ages(age_list)
Accept a list of employee ages.
Return a new list after removing duplicate ages while maintaining the original order.
Functions on Employee Names (String)
4. count_names_starting_with_vowel(names)
Accept a string containing employee names separated by spaces.
Return the number of names that start with a vowel (A, E, I, O, U).
5. longest_name(names)
Accept a string containing employee names separated by spaces.
Return the employee name having the maximum number of characters.
Menu
========== EMPLOYEE DATA PROCESSING SYSTEM ==========
1. Find Second Highest Employee Age
2. Count Senior Employees
3. Remove Duplicate Ages
4. Count Names Starting with a Vowel
5. Find Longest Employee Name
6. Exit
====================================================
Enter your choice:
Sample Input
Employee Ages:
34 55 29 60 55 42 60 51

Employee Names:
Ajay Rahul Esha Omkar Ishita Neha
Sample Output
Second Highest Age : 55
Senior Employees : 4
Unique Ages : [34, 55, 29, 60, 42, 51]
Names Starting with Vowel : 3
Longest Employee Name : Ishita
Instructions
Implement all operations using separate functions.
Each function must accept parameters and return the result.
Do not print results inside the functions.
The menu should continue to appear until the user selects Exit.
Display an appropriate message for an invalid choice.
Use meaningful function and variable names and follow proper indentation
'''
from functools import reduce
ages=[]
names=""

def age():
    global ages
    print("Employee Ages:")
    ages.extend(map(int,input().split()))
    return ages

def name():
    global names
    print("Employee Names:")
    names=input()
    return names

def s_high(l):
    nl=[]
    for i in l:
        if i not in nl:
            nl.append(i)
    res=sorted(nl)
    return res[-2]        
    

def senior(l):
    res=list(filter(lambda a:a>=50, l))
    return len(res)

def dup_remove(l):
    res=[]
    for a in l:
        if a not in res:
            res.append(a)
    return res

def vow(s):
    words=s.split()
    count=0
    for w in words:
        if w[0] in "AEIOU":
            count+=1
    return count
        
def long_name(s): 
    words=s.split()
    res=reduce(lambda x,y: x if len(x)>len(y) else y, words)
    return res
 

while True:
    print("""\n
========== EMPLOYEE DATA PROCESSING SYSTEM ==========
\n1. Find Second Highest Employee Age
2. Count Senior Employees
3. Remove Duplicate Ages
4. Count Names Starting with a Vowel
5. Find Longest Employee Name
6. Exit
====================================================
""")
    
    choice=int(input("Enter your choice: "))
    match choice:
        
        case 1:
            agee=age()
            print("Second Highest Age :",s_high(agee))
            ages.clear()
        
        case 2:
            agee=age()   
            print("Senior Employees :",senior(agee))
            ages.clear()

        case 3:
            agee=age()
            print("Unique Ages :",dup_remove(agee))
            ages.clear()

        case 4:
            namee=name()    
            print("Names Starting with Vowel :",vow(namee))
            names=""

        case 5:
            namee=name()
            print("Longest Employee Name :",long_name(namee))
            names=""

        case 6:
            print("Thank youuu....")
            break

        case _:
            print("Please enter correct choiceee....")