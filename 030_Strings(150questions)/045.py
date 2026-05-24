'''
Check whether a string starts/ends with another string. 

input:
S = "apple pie"
Prefix = "apple"
Suffix = "pie" 

output:
Start: True
End: True
'''



s=input("Enter = ")
pre=input("prefix = ")
suf=input("suffix = ")
words=s.split()
if words[0]==pre:
    print("start : True")
else:
    print("start : False")
    
if words[len(words)-1]==suf:
    print("end : True")
else:
    print("end : False")    
