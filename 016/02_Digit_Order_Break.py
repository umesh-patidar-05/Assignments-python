'''
Digit Order Break Analyzer

A number validation system checks whether digits of an ID follow a strict increasing pattern. The moment the pattern breaks, the system stops further checking.

Write a program to:

Traverse the digits from left to right
Check whether each digit is greater than the previous digit
If the pattern breaks at any point, stop checking further using break
Display the position where the order breaks (1-based index)
If no break occurs, print Strictly Increasing Number

Use loops and break wherever required.

Input:
12357

Output:
Strictly Increasing Number

Input:
12342

Output:
Break at position = 4
Not Increasing Number
'''


n=int(input("Enter the number: "))
l=len(str(n))
i=1
while l>1:

    d1=n//10**(l-1)%10
    d2=n//10**(l-2)%10
    if d2>d1:
        i+=1
        l-=1
        continue
    else:
        print(f"Break at position = {i}")
        print("Not Increasing number")
        i+=1
        l-=1
        break 
else:
    print("Strictly Increasing Number")    