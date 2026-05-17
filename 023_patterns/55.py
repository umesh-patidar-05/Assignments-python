'''
ABCDE
 ABCD
  ABC 
   AB 
    A
'''




n=int(input("Enter n: "))
for i in range(n,0,-1):
    print()
    ch=65
    for j in range(i,n):
        print(" ",end="")
    for k in range(1,i+1):
        print(chr(ch),end="")
        ch+=1