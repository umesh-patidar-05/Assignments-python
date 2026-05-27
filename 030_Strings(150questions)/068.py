'''
Count the sum of digits present in a string. 

input:
S = "a1b2c3" 

output:
6 (1+2+3)
'''


s=input("Enter string: ")
count=0
for i in s:
    if i>="0" and i<="9":
       count+=int(i)
print("sum=",count)       