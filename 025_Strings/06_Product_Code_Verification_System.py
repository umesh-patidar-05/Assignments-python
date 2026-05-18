'''
Product Code Verification System

An e-commerce company wants to verify whether two product codes are rearranged versions of each other.

Conditions:
- Ignore spaces
- Ignore case sensitivity

Input:
Enter first product code: Dormitory
Enter second product code: Dirty Room

Output:
Both Product Codes are Matching
'''


code1=input("Enter first product code ").lower()
code2=input("Enter second product code ").lower()
c1=""
c2=""
for i in code1:
    if i!=" ":
        c1=c1+i
for j in code2:
    if j!=" ":
        c2=c2+j
            
if len(c1)==len(c2):
    if sorted(c1)==sorted(c2):
        print("Both Product Codes are Matching")

    else:
        print("Both Product Codes are NOT Matching")
else:
    print("Both Product Codes are NOT Matching")