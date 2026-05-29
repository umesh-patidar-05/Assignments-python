'''
Employee Salary Processing
Store employee salaries in a List and calculate details.

Requirements:

Store salaries
Find average salary
Display salaries greater than average
Remove salaries below 15000

Test Cases:

Input: [10000, 20000, 30000] → Average = 20000, Above Average = 30000
Input: [15000, 15000, 15000] → Average = 15000
Input: [5000, 7000] → Remaining List = []
'''




n=int(input("Enter number of Employ: "))
salary=[]
for i in range(n):
    x=int(input("salary = "))
    salary.append(x)
sum=0
print()
for i in salary:
        sum=sum+i
if sum!=0:
    ave=sum//n
    print("Average =",ave)
    
above=[]
for i in salary[:]:
    if i<15000:
        salary.remove(i)
for i in salary:        
    if i>ave:
        above.append(i)    

if above!=[]:        
    print("Above Average",end=" ")         
    for i in above:
        print(i,end=" ")
    print()    

print("Remain = ",salary)




