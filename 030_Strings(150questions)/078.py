'''
Find the longest mirror-image substring at both ends. 

input:
S = "aabccbaa" 

output:
"aabc"
'''



s=input("Enter string: ")
l=len(s)
lf=len(s)//2
long=0
res=""
found=0
for i in range(lf):
    pre=s[0:i+1]
    #print(pre)
    for k in range(lf,l+1):
        for l in range(lf,l+1):
            suf=s[k:l+1]
            rsuf=suf[::-1]
        #print(suf)
        if rsuf==pre:
            if len(rsuf)>long:
                res=pre
                long=len(rsuf)
                found=1
if found==1:
    print(res)
else:
    print("No mirror-image substring at both ends")