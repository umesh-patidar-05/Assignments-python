'''
Reverse a string using recursion. 

input:
S = "abc" 

output:
"cba"
'''


#RESURSION SAMAJ NHI AAYI TO NORMAL REVERSE KR DIYA
s=input("Enter s: ")
rev=""
for i in s:
    rev=i+rev
    
print(rev)    