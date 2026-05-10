'''
Online Course Fee System

An online platform offers courses with fixed fees:

* Programming → ₹5000
* Design → ₹4000
* Marketing → ₹3000
  Discount is applied based on user type:
* Student → 20% discount
* Working Professional → 10% discount
* Others → No discount

Write a Python program to calculate final course fee.

Input:
Enter course category: Programming
Enter user type: Student

Output:
Final Course Fee: ₹4000
'''



course = input("Enter course category(programming/design/markeing): ").lower()
type = input("Enter user type(student/working/others): ").lower()
if course=="programming":
    if type=="student":
        print("Final Course Fee: ₹",5000-(5000*20)//100)
    else: 
        if type=="working":
            print("Final Course Fee: ₹",5000-(5000*10)//100)
        else:
            print("Final Course Fee: ₹",(5000))
else:
    if course=="design":
        if type=="student":
            print("Final Course Fee: ₹",4000-(4000*20)//100)
        else: 
            if type=="working":
                print("Final Course Fee: ₹",4000-(4000*10)//100)
            else:
                print("Final Course Fee: ₹",(4000))
    else:
        if type=="student":
            print("Final Course Fee: ₹",3000-(3000*20)//100)
        else: 
            if type=="working":
                print("Final Course Fee: ₹",3000-(3000*10)//100)
            else:
                print("Final Course Fee: ₹",(3000))

        



