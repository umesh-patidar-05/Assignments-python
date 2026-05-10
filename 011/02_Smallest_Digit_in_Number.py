'''
Smallest Digit in Number
A manufacturing company prints serial numbers on products. During quality testing, the scanner needs to detect the smallest digit in the serial number to verify coding standards.
Write a program to find the smallest digit in a number using loops.

Input:
57294

Output:
Smallest Digit = 2
'''


'''
passw=int(input("Password = "))
small=9
while passw>0:
    rem=passw%10
    if rem<small:
        small=rem
    passw=passw//10
print("Smallest Digit = ",small)
'''



n=int(input("Enter the number: "))
small=9
for i in str(n):
    i=int(i)
    if i<=small:
        small=i
print("Smallest Digit = ",small)
