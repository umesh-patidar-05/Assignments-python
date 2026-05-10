'''
Mirror Difference Transaction Verification System
A multinational banking company processes thousands of daily transaction IDs. To detect suspicious patterns and validate system-generated IDs,
 the security software performs a Mirror Difference Verification Test.
For every entered transaction ID:

Reverse the digits of the transaction ID

Find the absolute difference between the original ID and the reversed ID


Count the total number of digits in the difference


Apply the following conditions using if-elif-else:

If the difference is 0, print Perfect Match


Else if the difference is divisible by 9, print Verified


Else print Rejected


Write a program to automate this verification process using loops and conditional statements.
Input:
4215
Output:
Reverse = 5124Difference = 909Digits = 3Verified
Input:
1221
Output:
Reverse = 1221Difference = 0Digits = 1Perfect Match
Input:
1234
Output:
Reverse = 4321Difference = 3087Digits = 4Verified
'''






'''
origid = int(input("Enter Transition id = "))
orid = origid
reverse = 0
while origid>0:
    rem1=origid%10
    reverse=reverse*10+rem1
    origid=origid//10
print("Reverse =",reverse)    
if orid>reverse:
    diff= orid-reverse
    print("Difference =",diff)
else:
    diff=reverse-orid
    print("Diference =",diff)
diff1 = diff  
count=0
if diff>0:
    while diff>0:
        rem2=diff%10
        count+=1
        diff=diff//10
    print("Digits =",count)
else:
    count+=1
    print("Digits =",count)
if diff1==0:
    print("Perfect Match")
elif diff1%9==0:
    print("Verified")
else:
    print("Rejected")
'''




oid=int(input("Enter Transition id = "))
rid=""
count=0
for i in str(oid):
    rid=i+rid
rid=int(rid)    
print("Reverse =",rid)
diff=oid-rid
if diff>=0:
    print("difference =",diff)
else:
    diff=abs(diff)
    print("Difference =",diff)
for j in str(diff):
    count+=1
print("Digits =",count)    
if diff==0:
    print("Perfect Match")
elif diff%9==0:
    print("print Verified")
else:
    print("Rejected") 


