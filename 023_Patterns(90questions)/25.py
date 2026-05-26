'''
5
54
543
5432
54321
'''


n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    k=n
    for j in range(1,i+1):
        print(k,end="")
        k-=1
        