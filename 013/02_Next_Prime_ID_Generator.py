'''
Next Prime ID Generator

A multinational company auto-generates employee IDs in numeric sequence.
 Due to internal policy, only prime numbered IDs are assigned to new premium employees.

The HR manager enters the current last issued ID, and the software must search forward to find the next available prime number ID.

Write a program to find the first prime number after n.

Input:
14

Output:
Next Prime = 17
'''


n=int(input("Enter a number: "))
while True:
    n=n+1
    if n<=1:
        continue
    else:
        i=2
        x=0
        while i<=n//2:
            if n%i==0:
                x=1
            i=i+1
        if x==0:
            break
print("Next prime =",n)
 