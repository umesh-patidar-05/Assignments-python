'''
Reverse a Number
A security system stores OTP codes in reverse format for encryption to increase data safety. Reversing a number means extracting digits and rebuilding it in reverse order.
Write a program to *reverse a given integer using loops*.

Input: 1234
Output: 4321
'''



'''
n = int(input("enter the integer number "))
while n>0:
    reverse =n%10
    print(reverse,end="")
    n=n//10
print("\ndone")
'''



n=int(input("Entert the number: "))
rev=""
for i in str(n):
    rev=i+rev
print("reverse = ",rev)