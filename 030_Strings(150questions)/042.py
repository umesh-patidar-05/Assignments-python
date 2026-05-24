'''
Check if two strings are equal without equals(). 

input:
S1 = "abc"
S2 = "abc" 

output:
TRUE
'''

s1=input("Enter s1 = ")
s2=input("Enter s2 = ")
i=0
match=1
if len(s1)==len(s2):
    while i<len(s1):
        if s1[i]!=s2[i]:
            print("False")
            match=0
            break
        i+=1
    if match==1:
        print("True")
else:
   print("False")