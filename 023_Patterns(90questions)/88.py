'''
    1
    2
    3
    4
123454321
    4
    3
    2
    1
'''


n=int(input("Enter n: "))
for i in range(1,n):
    print()
    for j in range(1,n):
        print(" ",end="")
    for k in range(1,n+1):    
        if k==i:
            print(k,end="")

print()            
for l in range(1,n+1):
    print(l,end="") 
for m in range(n-1,0,-1):
    print(m,end="")

for p in range(n-1,0,-1):
    print()
    for q in range(1,n):
        print(" ",end="")
    for r in range(1,p+1):
        if r==p:
            print(r,end="")