'''
Secure Banking Transaction Analyzer

A banking server generates encrypted transaction IDs using letters and digits.

The fraud detection team wants a Python program to find the first digit that does not repeat in the transaction ID.

If no unique digit exists, print:

text
No unique digit found


### Input:

text
A122334455667789


### Output:

text
8
'''


str=input("Enter string: ")
dig=""
found=0

for d in str:
    if d.isdigit():
        dig+=d
visit=[]
for i in dig:
    count=0
    res=""
    if i not in visit:
        for j in dig:
            if j==i:
                count+=1
        if count==1:
            #print(i)
            res=i
            found=1
            break
        visit.append(i)
            
if found==0:
    print("No unique digit found")
else:
    print(res)    