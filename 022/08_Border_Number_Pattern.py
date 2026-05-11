'''
8) Border Number Pattern
    1 2 3 4 5
    2       5
    3       5
    4       5
    5 5 5 5 5
'''	




'''
n=int(input("Entet n: "))
for i in range(1,n+1):
    print()
    for j in range(1,n+1):
        if i==1 or i==n:
            print("*",end=" ")
     
        else:
            if j==1: 
                print(i,end=" ")
            elif j==n:
                print(j,end=" ")
            else:
                print(" ",end=" ")
'''                



n=int(input("Entet n: "))
for i in range(1,n+1):
    print()
    for j in range(1,n+1):
        if i==1:
            print(j,end=" ")
        elif i==n:   
            print(i,end=" ")
        else:
            if j==1: 
                print(i,end=" ")
            elif j==n:
                print(j,end=" ")
            else:
                print(" ",end=" ")