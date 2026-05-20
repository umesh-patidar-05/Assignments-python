'''
Smart Chat Message Cleaner

A social media company noticed that users often enter messages with
unnecessary spaces. To improve readability and storage efficiency, the
system should remove extra spaces and keep only a single space between
words.

Input: Enter message: Java is easy

Output: Cleaned Message: Java is easy
'''


message=input("Enter message: ")
m1=message.split()
m2=" ".join(m1)
print("Cleaned Message:",m2)