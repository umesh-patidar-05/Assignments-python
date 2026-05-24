'''
Replace all duplicate characters with '$'. 

input:
S = "hello" 

output:
"he$$o"
'''


s=input("Enter s = ")
res=""
for i in s:
    if i==" ":
        res=res+" "
    else:    
        count=0
        for j in s:
            if i==j:
                count+=1
        if count>1:
            res=res+"$"
        else:
            res=res+i
print(res)        