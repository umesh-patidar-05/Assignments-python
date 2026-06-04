'''
Secure Password Analysis

A cybersecurity team wants to identify pairs of passwords having no common characters.

Problem Statement:

Given N strings, count the number of pairs that do not share any common character.

Example:

Input

N = 4
passwords[] = {"abc", "de", "fg", "ad"}

Output

3

Explanation

("abc","de")
("abc","fg")
("de","fg")
'''

n=int(input("Enter number of strings: "))
list=[]
for i in range(n):
    list.append(input(f"Enter {i+1} string: "))
#print(list) 
count=0
for i in range(n):
    for j in range(i+1,n):
        found=1
        word=list[j]
        for k in word:
            if k in list[i]:
                found=0
                break
        if found==1:
            count+=1
print("\n",count)