'''
A security system logs employee entry IDs during a day.

Only prime-numbered IDs are considered valid VIP entries.

Tasks:

Extract all prime IDs from the list
Find the sum of prime IDs
Find the maximum prime ID
Count how many prime entries exist

Input:
A list of integers (may contain duplicates and non-prime numbers)

Example 1

Input:
[12, 5, 7, 9, 11, 14, 17]

Output:
Prime IDs = [5, 7, 11, 17]
Sum = 40
Max = 17
Count = 4

Example 2

Input:
[4, 6, 8, 10]

Output:
Prime IDs = []
Sum = 0
Max = -1
Count = 0
'''




n=int(input("Enter number of id's "))
id=[]
for i in range(n):
    id.append(int(input(f"Enter id{i+1}: ")))
print("ID'S: ",id)

prime=[]
for i in id:
    pri=1
    if i<=1:
        continue
    else:
        for j in range(2,(i//2)+1):
            if i%j==0:
                pri=0
                break
        if pri==1:
            prime.append(i)
print("Prime IDs ",prime)            

sum=0
max=-1
count=0
for i in prime:
    sum=sum+i
    count+=1
    if i>max:
        max=i
print("Sum =",sum)
print("Max =",max)
print("Count =",count)        