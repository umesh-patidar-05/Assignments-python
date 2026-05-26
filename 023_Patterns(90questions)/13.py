'''
1
01
101
0101
10101
'''

n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,i+1):
        if i%2!=0:
            if j%2!=0:
                print("1",end="")
            else:
                print("0",end="")
        else:
            if j%2!=0:
                print("0",end="")
            else:
                print("1",end="")