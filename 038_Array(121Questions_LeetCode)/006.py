'''
Add Binary 
'''

'''
Given two binary strings a and b, return their sum as a binary string.

 

Example 1:

Input: a = "11", b = "1"
Output: "100"
Example 2:

Input: a = "1010", b = "1011"
Output: "10101"
'''


'''
LOGIC:
print(bin(2))  #0b10
print(int("10",2))  #2
'''




s1=input("Enter first string: ")
s2=input("Enter second string: ")
s1=int(s1,2)
s2=int(s2,2)
res=s1+s2
print(bin(res)[2:])
