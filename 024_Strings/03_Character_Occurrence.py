'''
Character Occurrence Checker in Product Review

An e-commerce website wants to know how many times a particular character appears in a product review.

Input: Enter product review: this product is really good Enter character to check: o

Output: Character 'o' occurs: 4 times
'''


review=input("Enter product review: ").lower()
check=input("Enter character to check: ").lower()
occur=0
for ch in review:
    if ch==check:
        occur+=1
print(f"Character {check} occurs : {occur} times")
#print("Character {} occurs : {} times".format(check,occur))        