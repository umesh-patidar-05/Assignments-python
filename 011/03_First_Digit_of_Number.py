'''
First Digit of Number
A university receives thousands of application IDs. The first digit of each ID represents the department code, so the admission software must read the first digit quickly.
Write a program to find the first digit of a number using loops.

Input:
53892

Output:
First Digit = 5
'''


'''
n=int(input("Enter number = "))
while n>0:
    rem=n%10
    n=n//10
print(rem)
'''




n=int(input("Enter the number = "))
for i in str(n):
    print("First Digit = ",i)
    break
