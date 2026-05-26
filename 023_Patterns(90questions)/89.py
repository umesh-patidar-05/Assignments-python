'''
     1
    101
   10101
  1010101
 101010101
10101010101
'''



n=int(input("Enter n: "))
for i in range(1,n+1):
    print()
    for j in range(1,n-i+1):
        print("",end=" ")
    for k in range(1,2*i):
        if k%2==0:    
            print("0",end="")
        else:
            print("1",end="")