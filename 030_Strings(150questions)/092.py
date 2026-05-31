'''
Check if two strings are pq-balanced. 

input:
S1 = "pqqp", S2 = "qpqp" 


Example dependent on specific "pq-balanced" definition
'''





s1=input("Enter string 1: ")
s2=input("Enter string 2: ")
countp1=0
countq1=0
for i in s1:
    if i=="p":
        countp1+=1
    elif i=="q":
        countq1+=1

countp2=0
countq2=0
for i in s2:
    if i=="p":
        countp2+=1
    elif i=="q":
        countq2+=1
      
if countp1==countp2 and countq1==countq2:
    print("\nstrings are pq balanced")    
else:
    print("\nstrings are not pq balanced")
