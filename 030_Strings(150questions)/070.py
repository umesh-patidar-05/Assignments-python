'''
Compare the number of times 'the' and 'is' appear. 

input:
S = "the cat is on the mat" 

output:
the: 2
is: 1 
'''


s=input("Enter string: ")
words=s.split()
the_cou=0
is_cou=0
for word in words:
    if word=="the":
        the_cou+=1
    elif word=="is":
        is_cou+=1
        
print("the:",the_cou)
print("is_cou",is_cou)