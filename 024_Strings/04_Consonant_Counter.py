'''
Consonant Counter in Student Name Record

A school management system wants to count how many consonants are present in student names.

Input: Enter student name: Ajay Singh Thakur

Output: Total consonants: 10

NOTE:

Ignore case sensitivity (treat A and a same)
Consider only English alphabets for vowel/consonant counting
Vowels: A, E, I, O, U
'''



'''
name=input("Enter student name: ").lower()
count=0
for ch in name:
    if ch>="a" and ch<="z":
        if ch in "aeiou":
            continue
        else:
            count+=1
print("Total consonants: ",count)  
'''




name=input("Enter student name: ").lower()
count=0
for ch in name:
    if ch>="a" and ch<="z":
        if ch=="a" or ch=="e" or ch=="i" or ch=="o" or ch=="u":
            continue
        else:
            count+=1
print("Total consonants: ",count)  

