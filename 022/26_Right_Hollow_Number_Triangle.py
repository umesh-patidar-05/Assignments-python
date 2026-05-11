'''
Right Hollow Number Triangle
    1
    12
    1 3
    1  4
    12345
'''



n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,i+1):
        if i==1 or i==n:
            print(j,end="")
        else:
            if j==1 or i==j:
                print(j,end="")
            else:
                print(" ",end="")