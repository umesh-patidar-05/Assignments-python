'''
Employee Performance Appraisal System

A company evaluates employees based on performance rating (1–5):

* 5 → 25% salary hike
* 4 → 20% salary hike
* 3 → 10% salary hike
* 2 → 5% salary hike
* 1 → No hike
  If salary is below ₹20000 and rating is 4 or above, an additional ₹2000 bonus is given.

Write a Python program to calculate revised salary.

Input:
Enter salary: 18000
Enter rating: 4

Output:
Revised Salary: ₹23600
'''

salary = int(input("Enter Salary: "))
rating = int(input("Enter rating: "))
if salary<20000:
    if rating==4:
        print("Revised Salary: ₹",salary + 2000 + (salary*20)//100)
    else:
        if rating==5:
            print("Revised Salary: ₹",salary + 2000 + (salary*25)//100)
        else:
            if rating==3:
                print("Revised Salary: ₹",salary + (salary*10)//100)
            else:
                if rating==2:
                    print("Revised Salary: ₹",salary + (salary*5)//100)
                else:
                    print("No hike")
else:
    if rating==5:
        print("Revised Salary: ₹",salary + (salary*25)//100)
    if rating==4:
        print("Revised Salary: ₹",salary + (salary*20)//100)
    if rating==3:
        print("Revised Salary: ₹",salary + (salary*10)//100)
    if rating==2:
        print("Revised Salary: ₹",salary + (salary*5)//100)
    if rating==1:
        print("No hike")
   

