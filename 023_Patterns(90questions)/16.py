'''
a
bc
def
ghij
klmno
'''


n=int(input("Enter n: "))
ch=97
for i in range(1,n+1):
    print()
    for j in range(1,i+1):
        print(chr(ch),end="")
        ch+=1