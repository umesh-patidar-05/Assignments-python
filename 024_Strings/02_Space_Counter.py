'''
Space Counter in Chat Messages

A chat application wants to calculate how many spaces are used in a message.

Input: Enter chat message: Good morning everyone how are you

Output: Total spaces: 5
'''


chat=input("Ehter chat message: ")
space=0
for ch in chat:
    if ch==" ":
        space+=1
print("Total spaces:",space)        
