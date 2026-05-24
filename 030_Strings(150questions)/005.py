'''
Compare two strings ignoring case. 

input:
S1 = "Test"
S2 = "test" 

output:
Equal (or 0)
'''



s1=input("s1 = ").lower()
s2=input("s2 = ").lower()
if s1==s2:
    print("Equal")
else:    
    print("Not Equal")