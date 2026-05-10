'''
Electricity Bill Processing System (Multi-House)

An electricity board processes bills for multiple houses in a society.

Write a program to:

- Read number of houses n
- For each house:
    - Read units consumed
    - Calculate bill using slab rates:

        First 100 units      → ₹5 per unit  
        Next 100 units      → ₹7 per unit  
        Above 200 units     → ₹10 per unit  

    - Apply conditions:
        - If bill > ₹2000 → add 10% surcharge  
        - If units < 50 → give ₹100 subsidy  

    - Print bill for each house

- After processing all houses:
    - Print total bill collected
    - Print highest bill

---

Input:
3
120
250
40

Output:
House 1 Bill = 640
House 2 Bill = 1700
House 3 Bill = 100

Total Collection = 2440
Highest Bill = 1700
'''






n=int(input("Enter the number of houses: "))
i=1
unit=""
total=0
h=1
high=0
u1=""
while i<=n:
    u=input(f"Enter house {i} units ")
    unit=unit+u+"*"
    i+=1 
print("\n")
for k in unit:
    if k!="*":
        u1=u1+k
    else:     
        j=u1
        u1=""
        j=int(j)  
        if j<=100:
            bill=j*5
        elif j>100 and j<=200:
            bill=100*5 + (j-100)*7
        else:
            bill=100*5 + 100*7 + (j-200)*10
        if j<50:
            bill=bill-100   
        if bill>2000:
            bill=bill+(bill*10)//100
       
        print(f"House {h} Bill = ",bill)
        h+=1
        total = total+bill
        if bill>high:
            high=bill
print("\n")            
print("Total Collection =",total)        
print("Highest Bill =",high)    
            
       
      