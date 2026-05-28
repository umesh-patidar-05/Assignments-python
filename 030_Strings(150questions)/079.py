'''
Divide a string into n equal parts. S = "abcdef", n = 3 "ab", "cd", "ef"
'''




s=input("Enter s: ")
n=int(input("enter n: "))
l=len(s)//n
res=""
for i in s:
    res=res+i
    if len(res)==l:
        print(res)
        res=""