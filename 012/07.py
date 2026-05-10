'''
Duck Number Checker

A verification system is used by an e-commerce company to validate promotional coupon numbers. Coupon numbers containing at least one zero in between digits are considered special duck numbers. However, if the number starts with zero, it is rejected immediately.

A duck number is a number that contains at least one zero but does not start with zero.

Example:
1023

Write a program using loops to check whether the entered number is a Duck number.

Input:
1023

Output:
Duck Number
'''



'''
n=int(input("Enter the number "))
final=False
if n==0:
    print("rejected")
else:
    for i in str(n):
        if int(i)==0:   
            final=True
    if final==True:
        print("Duck number")   
    else:
        print("Not Duck number")
'''        



n=int(input("Enter the number "))
final=False
if n==0:
    print("rejected")
else:
    while n>0:
        rem=n%10
        if rem==0:
            final=True 
        n=n//10    
    if final==True:
        print("Duck number")   
    else:
        print("Not Duck number")    