'''
Diagonal Number Square
    1 - - -
    - 2 - -
    - - 3 -
    - - - 4
'''


n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,n+1):
        if j==i:
            print(i,end=" ")
        else:
            print("_",end=" ")