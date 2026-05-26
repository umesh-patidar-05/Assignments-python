'''
x
xx
xxx
xxxx
xxx
xx
x
'''


n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,i+1):
        print("x",end="")
for k in range(n-1,0,-1):
        print()
        for l in range(1,k+1):
            print("x",end="")