'''
55555
4  4
3 3
22
1
'''




n=int(input("Enter n: "))
for i in range(n,0,-1):
    print()
    for j in range(i,0,-1):
        if i==n:
            print(n,end="")
        else:
            if j==1:
                print(i,end="")
            elif j==i:
                print(j,end="")
            
            else:
                print(" ",end="")