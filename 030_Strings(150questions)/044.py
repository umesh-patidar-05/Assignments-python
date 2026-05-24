'''
Check if two strings are anagrams. 

input:
S1 = "listen"
S2 = "silent" 

output:
TRUE
'''




s1=input("Enter s1: ")
s2=input("Enter s2: ")
if sorted(s1)==sorted(s2):
    print("True")
else:
    print("False")
    