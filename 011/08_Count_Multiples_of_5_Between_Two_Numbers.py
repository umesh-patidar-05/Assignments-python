'''
Count Multiples of 5 Between Two Numbers
A supermarket gives coupons to customers whose token numbers are multiples of 5. The manager enters a token range and wants to know how many eligible token numbers exist.
Write a program to count numbers divisible by 5 between two given numbers using loops.

Input:
1 20

Output:
Count = 4
'''


'''
n1=int(input("n1 = "))
n2=int(input("n2 = "))
count=0
for i in range(n1,n2+1):
    if i%5==0:
        count+=1
print("Count = ",count)
'''



n1,n2=map(int,input("Enter range n1 , n2 = ").split(","))
count=0
while n1<=n2:
    if n1%5==0:
       count+=1
    n1+=1
print("Count = ",count)