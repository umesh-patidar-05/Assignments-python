'''
1
222
33333
4444444
555555555
'''




n=int(input("Enter n: "))
k=1
for i in range(1,n*2,2):
    print()
    for j in range(1,i+1):
        print(k,end="")
    k+=1    