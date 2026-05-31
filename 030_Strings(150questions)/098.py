'''
Check if the first 'z' is immediately followed by another 'z'. 

1.
input:
    S = "zzyy"
output1"
    True

2.
input: 
    S1 = "zyzz"
output: 
    False
'''


s1=input("Enter s1: ")

found=0
for i in range(len(s1)): 
    if s1[i]=="z":
        if s1[i+1]=="z":
            found=1
            break
        else:
            break
if found==1:
    print("True")
else:
    print("False")