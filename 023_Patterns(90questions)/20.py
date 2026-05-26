'''
1
12
1 3
1  4
12345
'''



n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    if i!=n:
        for j in range(1,i+1):
            if j==1:
                print(j,end="")
            elif j>2:
                print("",end=" ")
        for k in range(1,i):
            if k==1:
                print(i,end="")
    else:
        for m in range(1,i+1):
            print(m,end="")