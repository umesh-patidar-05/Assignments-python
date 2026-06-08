'''
=========================================
MISSING ALPHABET FINDER
=========================================

Enter a sentence and find which
alphabets are missing.

Menu:
1. Enter Sentence
2. Display Missing Alphabets
3. Count Missing Alphabets
4. Exit

Requirements:
- Use Set containing a-z.
'''





alp=set()
for i in range(ord("a"),ord("z")+1):
    alp.add(chr(i))
#print(alp)    
s=""
missing=set()

while True:
    print("""\n
=========================================
MISSING ALPHABET FINDER
=========================================  """)
    print("\nMenu:")
    print("1. Enter Sentence")
    print("2. Display Missing Alphabets")
    print("3. Count Missing Alphabets")
    print("4. Exit")
  
    choice=int(input("\nEnter your choice: "))
    match choice:
        case 1:
            s=input("\nEnter Sentence: ").lower()
        
        case 2:
            salp=set(s)
            missing=(alp.difference(salp))       
            print("\nmissing alphabets are: ")
            for i in missing:
                print(i,end=" ")

        case 3:
            print("\nMissing Alphabets count are: ",end=" ")
            print(len(missing))
                    
        case 4:
            print("\nThankyouuuuu")
            break

        case _:
            print("\ninvalid choice")