'''
Reverse only consonants. 

input:
S = "apple" 

output:
"alppe"
'''




s=input("Enter s: ")
rconso=""
for i in s:
    if i=="a" or i=="e" or i=="i" or i=="o" or i=="u" \
    or i=="A" or i=="E" or i=="I" or i=="O" or i=="U":
        continue
    else:
        rconso=i+rconso
k=0
for j in s:
    
    if j not in rconso:
        print(j,end="")
    else:
        print(rconso[k],end="")
        k+=1