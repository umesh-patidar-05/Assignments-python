'''
Employee Salary Processor

Scenario:
You are developing an Employee Salary Processing System for a company’s HR department. The system is used to manage and calculate employee salary details such as allowances, tax deductions, and final payable salary.

The HR staff may not always follow the correct sequence while using the system. For example, they might try to calculate net salary or tax before entering the basic salary. Your program must handle such situations properly.

👉 Important Condition:
If the Basic Salary is not entered, the system should display:
"Please enter basic salary first"
and should not perform any further calculations.

The system should be menu-driven and must continue running until the user selects Exit. All operations should be handled using match-case.

Menu Options:
1 → Enter Basic Salary
2 → Calculate HRA (20%) and DA (10%)
3 → Calculate Net Salary
4 → Tax Deduction

* Salary > 50000 → 10% tax
* Otherwise → 5% tax
  5 → Display Salary Slip
  6 → Exit

---

Sample Run 1:
Input:
Enter your choice: 3

Output:
Please enter basic salary first

---

Sample Run 2:
Input:
Enter your choice: 1
Enter Basic Salary: 40000

Output:
Basic Salary recorded successfully

---

Sample Run 3:
Input:
Enter your choice: 2

Output:
HRA: 8000
DA: 4000

---

Sample Run 4:
Input:
Enter your choice: 3

Output:
Net Salary (before tax): 52000

---

Sample Run 5:
Input:
Enter your choice: 4

Output:
Tax Deduction: 5200

---

Sample Run 6:
Input:
Enter your choice: 5

Output:
----- Salary Slip -----
Basic Salary: 40000
HRA: 8000
DA: 4000
Net Salary: 52000
Tax: 5200
Final Salary: 46800

---

Sample Run 7 (Invalid Choice):
Input:
Enter your choice: 9

Output:
Invalid choice. Please try again.

---

Sample Run 8 (Exit):
Input:
Enter your choice: 6

Output:
Exiting program... Thank you!
'''


count=0
while True:
    print("\n")
    print("1 → Enter Basic Salary")
    print("2 → Calculate HRA (20%) and DA (10%)")
    print("3 → Calculate Net Salary")
    print("4 → Tax Deduction")
    print("5 → Display Salary Slip")
    print("6 → Exit \n")
    
    
    choice=int(input("Enter your choice: "))
    match choice:
        
        case 1:
            bs=int(input("Enter Basic Salary: "))
            print("\n")
            print("Basic Salary recorded successfully")
            count=1
            
        case 2:
            if count==1:
                hra=bs*20//100
                da=bs*10//100
                print("\n")
                print("HRA:",hra)
                print("DA:",da)
            else:
                print("\n")
                print("Please enter basic salary first")
                continue
                
        case 3:        
            if count==1:
               net=bs+ bs*20//100 + bs*10//100
               print("\n")
               print("Net Salary (before tax):",net)
            else:
                print("\n")
                print("Please enter basic salary first")
                continue 
                
        case 4:
            if count==1:
                net= bs+ bs*20//100 + bs*10//100
                if net>50000:
                    taxded=net*10//100
                    print("\n")
                    print("Tax Deduction:",taxded)
                else:
                    taxded=net*5//100
                    print("\n")
                    print("Tax Deduction:",taxded)
            else:
                print("\n")
                print("Please enter basic salary first")
                continue
                
        case 5:
            if count==1:
                print("\n")
                print("------ Salary Slip------")
                print("Basic salary:",bs)
                print("HRA:",bs*20//100)
                print("DA:",bs*10//100)
                net=bs+ bs*20//100 + bs*10//100
                print("Net salary:",net)
                if net>50000:
                    taxded=net*10//100
                    print("Tax:",taxded)
                else:
                    taxded=net*5//100
                    print("Tax:",taxded)
                print("Final salary:",net-taxded)    
                
            else:
                print("\n")
                print("Please enter basic salary first")
                continue   
                
                
        case 6:
            print("\n")
            print("Exiting program... Thank you!")
            break   
        
        case _:
            print("\n")
            print("Invalid choice. Please try again.")
            continue