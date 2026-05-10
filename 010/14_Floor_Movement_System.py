'''
Floor Movement System (Elevator)
An elevator system takes the current floor and destination floor as input.

If current floor < destination → move upward and display floors
If current floor > destination → move downward and display floors
If both are same → display "Already on the same floor"

Write a program using if-elif-else and loops to simulate elevator movement.

Input: 1, 5
Output: 1 → 2 → 3 → 4 → 5

Input: 7, 3
Output: 7 → 6 → 5 → 4 → 3

Input: 4, 4
Output: Already on the same floor
'''



'''
curr=int(input("current floor = "))
dest=int(input("destination floor = "))
if curr<dest:
    while curr<=dest:
        print(curr,end=" -> ")
        curr+=1
elif curr>dest:
    while curr>=dest:
        print(curr,end=" -> ")
        curr-=1
else:
    print("Already on the same floor")
'''



c,d=map(int,input("Enter current floor and destination floor : ").split(","))
if c<d:
    for i in range(c,d+1):
        print(i,end=" ")
        if i!=d:
           print("->",end=" ")
elif c>d:
    for i in range(c,d-1,-1):
        print(i,end=" ")
        if i!=d:
           print("->",end=" ")
else:
    print("Already on the same floor ")
    