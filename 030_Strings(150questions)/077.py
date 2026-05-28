'''
Find the longest substring that appears at both ends. 

input:
S = "abracadabra" 

output:
"abra"
'''


s=input("Enter string: ")
l=len(s)
lf=len(s)//2
long=0
found=0
for i in range(lf):
    pre=s[0:i+1]
    #print(pre)
    for k in range(lf,l+1):
        for l in range(lf,l+1):
            suf=s[k:l+1]
        #print(suf)
        if suf==pre:
            if len(suf)>long:
                res=pre
                long=len(suf)
                found=1
if found==1:                
    print(res)
else:
    print("NO substring that appears at both ends.")
          


