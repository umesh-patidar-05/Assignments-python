'''
Count vowels and consonants. 

input:
S = "apple" 

output:
Vowels: 2
Consonants: 3
'''


s=input("Enter s: ")
vow=0
cons=0
for i in s:
    if i in "aeiouAEIUO":
        vow+=1
    elif i in " @#$%&*!?_-":
        continue
    else:
        cons+=1
print("Vowels:",vow)
print("Consonants:",cons)        