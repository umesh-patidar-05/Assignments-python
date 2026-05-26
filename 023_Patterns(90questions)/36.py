'''
ABCDE
A  D
A C
AB
A
'''


n=int(input("Enter n: "))
for i in range(n,0,-1):
    print()
    ch=65
    for j in range(i,0,-1):
        if i==n:
            print(chr(ch),end="")
        else:
            if j==1:
                print(chr(ch),end="")
            elif j==i:
                print(chr(ch),end="")
            
            else:
                print(" ",end="")
        ch+=1        