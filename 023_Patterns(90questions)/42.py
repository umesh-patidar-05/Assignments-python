'''
54321
5432
543
54
5
'''

n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(n,i-1,-1):
        print(j,end="")