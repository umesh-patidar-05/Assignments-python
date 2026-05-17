'''
1
1 2
1  3
1   4
1  3
1 2
1 
'''


n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,i+1):
        if j==1:
            print(j,end=" ")
        elif j==i:
            print(j,end="")
        else:
            print(" ",end="")
for k in range(1,n):
    print()
    for l in range(1,n-k+1):
        if l==1:
            print(l,end=" ")
        elif l==n-k:
            print(l,end="")
        else:
            print(" ",end="")