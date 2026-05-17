'''
11) Butterfly Number Pattern
    1      1
    12    21
    123  321
    12344321
    123  321
    12    21
    1      1
'''	





n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,i+1):
        print(j,end="")
    for a in range(i,n):
        print(" ",end="")
    for b in range(n-1,i-1,-1):
        print(" ",end="")
    for c in range(i,0,-1):
        print(c,end="")
for k in range(n-1,0,-1):
        print()
        for l in range(1,k+1):
            print(l,end="")
        for d in range(k,n):
            print(" ",end="")
        for e in range(k,n):
            print(" ",end="")
        for f in range(k,0,-1):
            print(f,end="")