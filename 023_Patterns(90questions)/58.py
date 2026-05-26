'''
    1
   1 2
  1 2 3
 1 2 3 4
1 2 3 4 5
'''



n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,n-i+1):
        print(" ",end="")
    for k in range(1,i+1):
        print(k,end=" ")
