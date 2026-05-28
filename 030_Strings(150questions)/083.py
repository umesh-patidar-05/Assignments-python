'''
Create a string from a byte array. 

input:
Byte[] = {72, 101, 108} 


output:
(ASCII for H, e, l) "Hel"
'''



byte=input("Enter digits for list: ").split()
res=""
for i in byte:
    i=int(i)
    res=res+chr(i)
print(res)    