'''
Count total alphabets, digits, and special characters. 

input:
S = "a1b!c2"

output: 
Alphabets: 3, Digits: 2, Special: 1
'''

s=input("Enter s: ")
alp=0
dig=0
sp=0
for i in s:
    if i>="a" and i<="z" or i>="A" and i<="Z": 
        alp+=1
    elif i>="0" and i<="9":
        dig+=1
    elif i==" ":
        continue
    else:
        sp+=1
print("Alphabets:",alp)
print("Digits:",dig)
print("Specail:",sp)
        