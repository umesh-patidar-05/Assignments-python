'''
Check if two strings are rotations of each other. 

input:
S1 = "abcde"
S2 = "cdeab" 

output:
TRUE
'''


s1=input("Enter s1: ")
s2=input("Enter s2: ")
if sorted(s1)==sorted(s2):
    print("True")
else:
    print("False")
    