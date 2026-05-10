'''
Zero Detection & Early Termination System

A financial system scans transaction IDs digit by digit. If a digit '0' is found, the system immediately stops processing further digits for security reasons.

Write a program to:

Traverse each digit of the number from right to left
Display each digit processed before encountering 0
Stop the loop immediately when 0 is found using break
Count how many digits were processed before termination
If no zero is found, print No Zero Found

Use loops and break wherever required.

Input:
572049

Output:
Digits Processed: 9 4
Count = 2
Zero Found - Process Stopped

Input:
56789

Output:
Digits Processed: 9 8 7 6 5
Count = 5
No Zero Found
'''


n=int(input("Enter the number: "))
rev=""
dp=""
count=0
for i in str(n):
    rev=i+rev   
for j in rev:
    if j!="0":
        dp = dp+j+" "
        count+=1      
    else:
        print("Digit processed:",dp)
        print("Count =",count)          
        print("zero Found - Process Stopped")
        break 
      
else:
    print("Digit processed:",dp)
    print("Count =",count)  
    print("No Zero found ")    