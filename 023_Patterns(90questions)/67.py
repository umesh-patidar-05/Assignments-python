'''
    A
   B B
  C   C 
 D     D
EEEEEEEEE
'''




n=int(input("Enter n: "))
ch=65
for i in range(1,n+1):
    print()
    for j in range(n-i):
        print(" ",end="")
    for k in range(1,2*i):
        if i!=n:
            if k==1 or k==2*i-1:
                print(chr(ch),end="")
            else:
                print(" ",end="")
        else:
            print(chr(ch),end="")      
    ch+=1        