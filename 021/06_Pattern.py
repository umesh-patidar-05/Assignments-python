'''
a
ab
abc
abcd
abcde
'''



n=int(input("Enter n: "))
i=1
while i<=n:
    print()
    j=1
    ch=97
    while j<=i:
        print(chr(ch),end="")
        ch+=1
        j+=1
    i+=1   
