'''
Instant Messaging Word Encryption System

A messaging application wants to temporarily encrypt messages during
transmission. The encryption rule is to reverse every word individually
while keeping the word positions unchanged.

Input: Enter message: java is powerful

Output: Encrypted Message: avaj si lufrewop
'''


m=input("Enter message: ")
words=m.split()
res=""
for word in words:
    res=res + word[::-1] + " "
print("Encrypted Message:",res)
    