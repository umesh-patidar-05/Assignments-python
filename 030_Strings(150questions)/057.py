'''
Merge two strings alternatively (char by char). 

input:
S1 = "ABC"
S2 = "def" 

output
"AdBeCf"
'''


s1=input("Enter s1 = ")
s2=input("Enter s2 = ")
res=""
i=0
while i<len(s1) or i<len(s2):
    res=res+s1[i:i+1]+s2[i:i+1]
    i+=1
print(res) 