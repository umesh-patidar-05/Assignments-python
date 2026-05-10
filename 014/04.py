'''
Unique Digit Security Scanner

A smart locker accepts only numbers whose all digits are unique.

Write a program using for-else loop to:

- Check every digit
- If any repeated digit found reject
- Else accept

Input:
57294

Output:
Valid Unique Code
'''


n=int(input("Enter the number ="))
count=0
for i in str(n):
    for j in str(n):
        if i==j:
            count+=1
    if count>1:
        print("invalid")
        break
    count=0            
else:
    print("Valid Unique Code")
    