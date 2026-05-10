'''
Digit Gap Consistency Checker

A number analysis system checks whether the gap between digits follows a consistent pattern.

Write a program to:

Find the absolute difference between first two digits
Compare this difference with all next adjacent digit differences
If any difference is not equal to the first difference, stop using break
Display:
- Initial gap
- Whether all gaps are same or not

Input:
8642

Output:
Initial Gap = 2
Consistent Pattern

Input:
97531

Output:
Initial Gap = 2
Consistent Pattern

Input:
5321

Output:
Initial Gap = 2
Pattern Break Detected
'''



n=int(input("Enter the number: "))
l=len(str(n))
lc=l
d=""
while l>1:
    d1=n//10**(l-1)%10
    d2=n//10**(l-2)%10
    if lc==l:
        ig=d1-d2
        print("Initial Gap =", ig)
    diff=d1-d2
    d=d+str(diff)  
    l-=1
else:
    for i in d:
        if i==str(ig):
            continue
        else:
            print("Pattern Break Detected ")
            break              
    else:
        print("Consistent Pattern")        