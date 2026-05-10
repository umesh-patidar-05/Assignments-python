'''
Count Factors of Number
A mathematics learning app gives practice questions where students must know how many factors a number has. The app should automatically count the total factors of the entered number.
Write a program to count total factors of a number using loops.

Input:
12

Output:
Factors Count = 6
'''



'''
n=int(input("number = "))
count=0
for i in range(1,n+1):
    if n%i==0:
        count+=1
print("Factor Count = ",count)
'''


n=int(input("Enter the number = "))
count=0
i=1
while i<=n:
    if n%i==0:
        count+=1
    i+=1
print("Factors count =",count)