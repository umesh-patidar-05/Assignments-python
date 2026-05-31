'''
Remove 'b' and 'ac' from a string. 

S = "abacbb" 

output
"c"
'''


#NOT COMPLETE
s=input("Enter s: ")
res=""
for i in range(len(s)):
    if s[i]=="b":
       continue
    elif s[i]=="a" and s[i+1]=="c":   
        continue
    else:
        res+=s[i]
print(res)        
