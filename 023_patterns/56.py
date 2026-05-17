'''
11111
 2222
  333
   44
    5
'''



n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,i):
        print(" ",end="")
    for k in range(1,n-i+2):
        print(i,end="")
        