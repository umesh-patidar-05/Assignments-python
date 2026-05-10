'''
Power of a Number
A scientific calculator app is used by engineering students for repeated multiplication operations. It should calculate the value of a number raised to a given power.
Write a program to calculate n raised to power p using loops.

Input:
2 5

Output:
32
'''


'''
n1 = int(input("n1 = "))
n2 = int(input("n2 = "))
i=1
res=1
while i<=n2:
    res=res*n1
    i+=1
print(res)
'''



n1,n2=map(int,input("Enter : ").split(" "))
res=1
for i in range(1,n2+1):
    res=res*n1
print(res)
    



