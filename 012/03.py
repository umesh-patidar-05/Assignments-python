'''
Display Numbers Ending with 5

A supermarket tracks token numbers ending in 5.
Write a program using loops to display numbers ending with 5 between two numbers.

Input:
10 40

Output:
15 25 35
'''



'''
n1=int(input("Enter 1st number  = "))
n2=int(input("Enter 2nd number = "))
if n1<n2:
    for i in range(n1+1,n2):
        if i%10==5:
            print(i,end=" ")
else:
    for j in range(n1-1,n2,-1):
        if j%10==5:
            print(j,end=" ")
'''




n1=int(input("Enter 1st number  = "))
n2=int(input("Enter 2nd number = "))

while n1<=n2:
    if n1%10==5:
        print(n1,end=" ")
    n1+=1
       