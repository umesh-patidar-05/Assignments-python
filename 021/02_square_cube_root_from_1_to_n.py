'''
write a program to print square, cube, and square root of all numbers from 1 to n
'''



n=int(input("Enter number: "))
i=1
while i<=n:
    print("Number =",i)
    print("Square =",i*i)
    print("Cube =",i*i*i)
    print("Square root =",round(i**0.5,3))
    print()
    i+=1
