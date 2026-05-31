'''
Check if a string is a pangram (contains every letter). 

input:
S = "The quick brown fox jumps over the lazy dog" 

output:
TRUE
'''

s=input("Enter s: ").lower()
found=1
for i in range(97,123):
    if chr(i) not in s:
        found=0
        
if found==1:
    print("TRUE")
else:
    print("FALSE")

