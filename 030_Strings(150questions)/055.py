'''
Reverse only vowels. 

input:
S = "hello" 

output:
"holle"
'''




s=input("Enter s: ")
rvov=""
for i in s:
    if i=="a" or i=="e" or i=="i" or i=="o" or i=="u" \
    or i=="A" or i=="E" or i=="I" or i=="O" or i=="U":
        rvov=i+rvov

k=0
for j in s:
    
    if j not in rvov:
        print(j,end="")
    else:
        print(rvov[k],end="")
        k+=1