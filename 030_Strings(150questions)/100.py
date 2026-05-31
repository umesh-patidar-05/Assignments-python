'''
Return true if string contains 'abc' not followed by '.'

1.
input:
 S = "abcx"
output: 
 S: True

2.
input:
 S = "abc."
output: 
 S: False
'''


s=input("Enter s: ")

if "abc" in s:
    if "abc." not in s:
        print("True")
    else:
        print("False")