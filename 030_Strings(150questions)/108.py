'''
Check if a string is an isogram (no repeating letters). 

input:
S = "ambidextrous" 

output:
TRUE
'''


s=input("Enter s: ")
found=0
for i in s:
    if i.isalpha():
        count=0
        for j in s:
            if i==j:
                count+=1
        if count>1:
            found=1
            break
if found==0:
    print("TRUE")
else:
    print("FALSE")    