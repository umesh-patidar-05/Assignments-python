'''
Largest Digit in Number
A cybersecurity company checks numeric passwords used in smart lockers. To identify password strength, the system finds the highest digit present in the entered password. Higher digits indicate stronger variation in the password pattern.
Write a program to find the largest digit in a number using loops.

Input:
57294

Output:
Largest Digit = 9
'''


'''
passw=int(input("Password = "))
max=0
while passw>0:
    rem=passw%10
    if rem>max:
        max=rem
    passw=passw//10
print("Largest Digit = ",max)
'''


n=int(input("Enter Password: "))
max=0
for i in str(n):
    i=int(i)
    if i>=max:
        max=i
print("Largest Digit = ",max)        
    
