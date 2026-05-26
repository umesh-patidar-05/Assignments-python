'''
123456
54321
1234
321
12
1
'''


n=int(input("Enter n: "))
for i in range(n,0,-1):
    print()
    if i%2==0:
        for j in range(1,i+1):
            print(j,end="")
    else:
        for k in range(i,0,-1):
            print(k,end="")