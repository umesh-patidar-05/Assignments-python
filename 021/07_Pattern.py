'''
enter n6
     *
    **
   *
  **
 ***
**
'''


n=int(input("Enter n: "))
i=1
while i<=n:
    print()
    blank=1
    while blank<=n-i:
        print(" ",end="")
        blank+=1
    j=1    
    while j<=1:
        if i%2==0:
            print("*",end=" ")
        else:
            print("**",end=" ")
        j+=1
    i+=1    
    
    
      