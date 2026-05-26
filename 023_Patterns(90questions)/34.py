'''
EEEEE
DDDD
CCC
BB
A
'''



n=int(input("Enter n: "))
ch=64+n
for i in range(n,0,-1):
    print()
    for j in range(1,i+1):
        print(chr(ch),end="") 
    ch-=1    
