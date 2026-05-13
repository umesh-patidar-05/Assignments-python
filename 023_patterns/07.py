'''
1
00
111
0000
11111
'''


n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,i+1):
        if i%2!=0:
            print("1",end="")
        else:
            print("0",end="")