'''
Bank Customer Account Privacy System

A national bank is developing a secure customer portal where account
numbers should not be displayed completely on the screen. For security
reasons, the system should hide all digits except the last four digits
before showing them to users.

Conditions: - Display only the last 4 digits - Replace all previous
characters with *

Input: Enter account number: 123456789012

Output: Masked Account: ****9012
'''



n=input("Enter account number: ")
l=len(n)
m=""
for i in range(l):
    if i<=l-5:
        m=m+"*"
    else:
        m=m+n[i]
print("Masked Account:",m)        