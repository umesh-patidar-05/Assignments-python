'''
Alternate Digit Prime Checker

A math lab adds alternate digits from right side.

Write a program to:

- Find sum of alternate digits
- Check whether sum is Prime or Not

Input:
12345

Output:
Alternate Sum = 9
Not Prime
'''




n=input("Enter the number = ")
rev=""
for i in n:
    rev=i+rev

s=0
k=1
for j in rev:
    if k%2!=0:
        s=s+int(j)
    k+=1
print("Alternate Sum = ",s) 

if s<=1:
    print("Not prime")    
else:
    for l in range(2,(s//2)+1):
        if s%l==0:
            print("Not prime")
            break
    else:
        print("Prime ")
       
