'''
A
BCD
EFGHI
JKLMNOP
'''

n=int(input("Enter n: "))
ch=65
for i in range(1,n*2,2):
    print()
    for j in range(1,i+1):
        print(chr(ch),end="")
        ch+=1   