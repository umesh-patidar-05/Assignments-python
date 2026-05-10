'''
Prime Number Range Checker

A cyber security system generates prime numbers for encryption analysis.
The user enters a starting number and ending number.
The system checks and displays all prime numbers between the given range using nested loops.

Input:
Enter starting number: 10
Enter ending number: 50

Output:
Prime Numbers are:
11
13
17
19
23
29
31
37
41
43
47
'''



x=int(input("Enter starting number: "))
y=int(input("Enter ending number: "))
print("Prime numbers are: ")

for n in range(x,y+1):
    if n>1:
        for m in range(2,n):
            if n%m==0:
                break
        else:
            print(n)
