'''
12345
1234
123
12
1
'''


n=int(input("Enter n: "))
for i in range(n,0,-1):
    print()
    for j in range(1,i+1):
        print(j,end="")