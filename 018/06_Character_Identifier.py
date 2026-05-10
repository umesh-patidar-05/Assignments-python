'''
Data Validation System – Character Identifier
A system needs to validate user input characters.
If the input is:
Alphabet → display "Alphabet"
Digit → display "Digit"
Otherwise → display "Special Character"
Write a program using inline if to classify the character.
'''



ch=input("enter characters: ").lower()
res= "Alphabet" if ch>="a" and ch<="z" else "Number" if ch>="0" and ch<="9" else"Special character"
print("res =",res)
