'''
    1
   10
  101
 1010
10101
'''
   

   
'''    
n=int(input("Enter n: "))
i=1
while i<=n:
    print()
    s=n
    while s>=i:
        print(" ",end="")
        s-=1
    j=1
    while j<=i:
        if j%2==0:
            print("0",end="")
        else:
            print("1",end="")
        j+=1
    i+=1    
'''    




    
n=int(input("Enter n: "))
i=1
while i<=n:
    print()
    s=n
    while s>=i:
        print(" ",end="")
        s-=1
    j=1
    while j<=i:
        if j%2==0:
            print("0 ",end="")
        else:
            print("1 ",end="")
        j+=1
    i+=1    