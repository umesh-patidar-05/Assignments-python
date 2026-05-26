'''
12345
 1234
  123
   12
    1
'''


'''
n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,i):
        print(" ",end="")
    for k in range(1,n-i+2):
        print(k,end="")
'''




n=int(input("Enter n: "))
for i in range(n,0,-1):
    print()
    for j in range(i,n):
        print(" ",end="")
    for k in range(1,i+1):
        print(k,end="")