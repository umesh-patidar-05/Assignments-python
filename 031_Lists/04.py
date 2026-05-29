'''
Palindrome Number List Checker
Scenario

A system checks lucky numbers which are palindromes.

Requirements
Check palindrome numbers
Store palindrome numbers in list
Count palindrome numbers
Find largest palindrome
Sort palindrome list
Test Cases

Input:
[121, 131, 20, 44, 55, 100]

Output:

Palindromes: [121, 131, 44, 55]
Count: 4
Largest: 131
Sorted: [44, 55, 121, 131]
'''


n=int(input("Enter size of list: "))
lucky=[]
for i in range(n):
    lucky.append(int(input(f"Enter number{i+1} ")))
print()    

large=0
count=0
palindrome=[]
for i in lucky:
    i=str(i)
    if i==i[::-1]:
        i=int(i)
        palindrome.append(i)
        count+=1
        if i>large:
            large=i


print("Palindromes:",palindrome)
print("count:",count)
print("largest:",large)
print(sorted(palindrome))
