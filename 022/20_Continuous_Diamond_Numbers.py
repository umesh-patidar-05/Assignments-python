'''
20) Continuous Diamond Numbers
           1
          2 3
         4 5 6
        7 8 9 10
         4 5 6
          2 3
           1
'''





n=int(input("Enter n: "))
l=1
for i in range(1,n+1):
    print()
    for j in range(n,i-1,-1):
        print(" ",end=" ")
    for k in range(1,i+1):
        print(l,"",end=" ")
        l=l+1
  
for a in range(1,n+1):
    print()
    for b in range(1,a+1):
        print(" ",end="")
    for c in range()