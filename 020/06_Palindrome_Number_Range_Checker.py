'''
Palindrome Number Range Checker

A barcode verification system checks for palindrome numbers within a specific range.
The user enters starting and ending numbers.
The system displays all palindrome numbers using nested loops.

Input:
Enter starting number: 100
Enter ending number: 200

Output:
Palindrome Numbers are:
101
111
121
131
141
151
161
171
181
191
'''



x=int(input("Enter starting number: "))
y=int(input("Enter ending number: "))
print("Palindrome Numbers are:")
for i in range(x,y+1):
    rev=""
    for j in str(i):
        rev=str(j)+rev  
    if rev==str(i):
        print(i)