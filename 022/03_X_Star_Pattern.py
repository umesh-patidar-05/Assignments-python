'''
X Star Pattern
    *   *
     * *
      *
     * *
    *   *
'''


n=int(input("Enter n: "))
for i in range(1,2*n):
    print()
    for j in range(1,2*n):
        if j==i or j==2*n-i:
            print("*",end="")
        else:
            print(" ",end="")