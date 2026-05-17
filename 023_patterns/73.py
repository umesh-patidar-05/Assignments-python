'''
5 5 5 5 5
 4 4 4 4
  3 3 3
   2 2
    1
'''




n=int(input("Enter n: "))
for i in range(n,0,-1):
    print()
    for j in range(1,n-i+1):
        print(" ",end="")
    for k in range(1,i+1):
        print(i,end=" ")