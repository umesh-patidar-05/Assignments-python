'''
Number X Pattern
    1   5
     2 4
      3
     2 4
    1   5
'''	





n=int(input("Enter n: "))
for i in range(1,2*n):
    print()
    for j in range(1,2*n):
        if j==i or j==2*n-i:
            print(j,end="")
        else:
            print(" ",end="")