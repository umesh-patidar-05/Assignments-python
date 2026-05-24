'''
Reverse order of words. 

input:
S = "one two three" 

output:
"three two one"
'''



s=input("Enter s: ")
words=s.split()
revwords=words[::-1]
res=revwords
print(" ".join(res))