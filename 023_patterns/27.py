'''
1
10
1 1
1  0
10101
'''



n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    if i!=n:
        for j in range(1,i+1):
            if j==1:
                print(1,end="")
            elif j>2:
                print("",end=" ")
        for k in range(1,i):
            if k==1:
                if i%2==0:
                    print("0",end="")
                else:
                    print("1",end="")
    else:
        for m in range(1,i+1):
            if m%2==0:
                print("0",end="")
            else:
                print("1",end="")