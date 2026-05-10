'''
Smart Banking System

Scenario:
You are developing a Smart Banking System for a bank to help customers perform basic banking operations such as deposit, withdrawal, balance checking, and interest calculation.

Sometimes, users may try to withdraw money or check balance before depositing any amount. Your system must handle such situations properly.

👉 Important Condition:
If no amount has been deposited yet, the system should display:
"No balance available. Please deposit first"
and should not allow withdrawal, balance check, or interest calculation.

The system should be menu-driven and must continue running until the user selects Exit. All operations should be handled using match-case.

Menu Options:
1 → Deposit Money
2 → Withdraw Money
3 → Check Balance
4 → Apply Interest

* Balance > 50000 → 5% interest
* Otherwise → 3% interest
  5 → Exit

---

Sample Run 1:
Input:
Enter your choice: 2

Output:
No balance available. Please deposit first

---

Sample Run 2:
Input:
Enter your choice: 1
Enter amount to deposit: 10000

Output:
Amount deposited successfully

---

Sample Run 3:
Input:
Enter your choice: 3

Output:
Current Balance: 10000

---

Sample Run 4:
Input:
Enter your choice: 2
Enter amount to withdraw: 15000

Output:
Insufficient balance

---

Sample Run 5:
Input:
Enter your choice: 4

Output:
Interest added: 300
Updated Balance: 10300

---

Sample Run 6:
Input:
Enter your choice: 2
Enter amount to withdraw: 5000

Output:
Withdrawal successful

---

Sample Run 7 (Invalid Choice):
Input:
Enter your choice: 9

Output:
Invalid choice. Please try again.

---

Sample Run 8 (Exit):
Input:
Enter your choice: 5

Output:
Exiting system... Thank you!

---
'''


'''
count=0
curr=0
while True:
    print("\n")
    print("1 → Deposit Money")
    print("2 → Withdraw Money")
    print("3 → Check Balance")
    print("4 → Apply Interest")
    print("5 → Exit \n")
    choice=int(input("Enter your choice: "))
    match choice:
        case 1:
            depo=int(input("Enter amount to deposit: "))
            print("\n")
            print("Amount deposited successfully")
            curr=depo
            count=1
            
        case 2:
            if count==1:
                withd=int(input("Enter amount to withdraw: "))
                if depo>=withd:
                    print("\n")
                    print("Withdrawal successful")
                    curr=curr-withd
                else:
                    print("\n")
                    print("Insufficient balance")
            else:
                print("\n")
                print("No balance available. Please deposit first")
                continue
                
        case 3:
            if count==1:
                print("\n")
                print("Current Balance: ",curr) 
            else:
                print("\n")
                print("No balance available. Please deposit first")
                continue 
                
        case 4:
            if count==1:
                print("\n")
                if curr>50000:                    
                    print("Interest added:",curr*5//100)
                    print("Updated Balance:",curr+curr*5//100)
                else:                    
                    print("Interest added:",curr*3//100)
                    print("Updated Balance:",curr+curr*3//100)    
            else:
                print("\n")
                print("No balance available. Please deposit first")
                continue 
        case 5:
            print("\n")
            print("Exiting system... Thank you!")
            break
        case _:
            print("\n")
            print("Invalid choice. Please try again")
'''                
                
                
               
               
               
               
               
count=0
curr=0
while True:
    print("\n")
    print("1 → Deposit Money")
    print("2 → Withdraw Money")
    print("3 → Check Balance")
    print("4 → Apply Interest")
    print("5 → Exit \n")
    choice=int(input("Enter your choice: "))
    match choice:
        case 1:
            depo=int(input("Enter amount to deposit: "))
            print("\n")
            print("Amount deposited successfully")
            curr=curr+depo
            count=1
            print(curr)
            
        case 2:
            if count==1:
                withd=int(input("Enter amount to withdraw: "))
                if depo>=withd:
                    print("\n")
                    print("Withdrawal successful")
                    curr=curr-withd
                else:
                    print("\n")
                    print("Insufficient balance")
            else:
                print("\n")
                print("No balance available. Please deposit first")
                continue
                
        case 3:
            if count==1:
                print("\n")
                print("Current Balance: ",curr) 
            else:
                print("\n")
                print("No balance available. Please deposit first")
                continue 
                
        case 4:
            if count==1:
                print("\n")
                if curr>50000:                    
                    print("Interest added:",curr*5//100)
                    print("Updated Balance:",curr+curr*5//100)
                else:                    
                    print("Interest added:",curr*3//100)
                    print("Updated Balance:",curr+curr*3//100)    
            else:
                print("\n")
                print("No balance available. Please deposit first")
                continue 
        case 5:
            print("\n")
            print("Exiting system... Thank you!")
            break
        case _:
            print("\n")
            print("Invalid choice. Please try again")
               