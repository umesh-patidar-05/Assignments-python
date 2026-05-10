'''
Strong Number Detector

A banking security system uses Strong Numbers for special authentication testing.
The user enters a range of numbers.
The system identifies all Strong Numbers between the given x=int(input("Enter starting number: "))
y=int(input("Enter ending number: "))range using nested loops.

A Strong Number is a number in which the sum of factorials of its digits is equal to the original number.

Example:
145

1! + 4! + 5!
= 1 + 24 + 120
= 145

Since the sum is equal to the original number, 145 is called a Strong Number.

Input:
Enter starting number: 1
Enter ending number: 500

Output:
Strong Numbers are:
1
2
145
'''


x=int(input("Enter starting number: "))
y=int(input("Enter ending number: "))
print("Strong Numbers are:")
for i in range(x,y+1):
    temp=i
    sum=0
    for j in str(i):
        fact=1
        j=int(j)
        for k in range(j,0,-1):
            fact=fact*k
        sum+=fact   
    
    if sum==i:
        print(sum)
   