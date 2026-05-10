'''
Even Numbers Between Two Numbers*
A teacher wants to assign only even roll numbers for a special activity. The system should display all even numbers between two given numbers.
Write a program to *display all even numbers between two numbers using loops*.

Input: 10, 20
Output: 10 12 14 16 18 20
'''



'''
n1 = int(input("n1 = "))
n2 = int(input("n2 = "))
if n1%2==0:
    for i in range(n1,n2+1,2):
        print(i)
else:
    for i in range(n1+1,n2+1,2):
        print(i)
'''



n1,n2=map(int,input("Enter n1 and n2 ").split(","))        
while n1<=n2:
    if n1%2==0:
        print(n1,end=" ")
    n1+=1