'''
Utility Toolkit System

You are developing a Utility Toolkit Application for a small office. Employees use this tool to quickly perform common number operations like checking prime numbers, reversing numbers, etc.

The system should be menu-driven and must continue running until the user selects Exit. All operations should be handled using match-case.

Menu Options:
1 → Check Prime Number
2 → Check Palindrome Number
3 → Reverse a Number
4 → Count Digits
5 → Exit

Sample Run 1:
Input:
Enter your choice: 1
Enter number: 7

Output:
7 is a Prime Number

Sample Run 2:
Input:
Enter your choice: 2
Enter number: 121

Output:
121 is a Palindrome Number

Sample Run 3:
Input:
Enter your choice: 3
Enter number: 456

Output:
Reversed Number is: 654

Sample Run 4:
Input:
Enter your choice: 4
Enter number: 98765

Output:
Total digits: 5

Sample Run 5 (Invalid Choice):
Input:
Enter your choice: 9

Output:
Invalid choice. Please try again.

Sample Run 6 (Exit):
Input:
Enter your choice: 5

Output:
Exiting program... Thank you!

Requirements:

* Use while loop to repeat menu
* Use match-case for decision making
* Handle negative numbers properly
* Use only loops and conditions
'''




while True:
    print("\n")
    print("1 → Check Prime Number")
    print("2 → Check Palindrome Number")
    print("3 → Reverse a Number")
    print("4 → Count Digits")
    print("5 → Exit \n")
    choice=int(input("enter your choice: "))
    
    
    match choice:
        case 1:
            x=0
            n=int(input("Enter number: "))
            print("\n")
            if n<=1:
                print(n," is Not prime number")
            else:
                for i in range(2,n//2+1):
                    if n%i==0:
                        x=1
                        break
                if x==1:
                    print(n," is Not prime number")
                else:
                    print(n," is prime number")
                    
                    
        case 2:
            rev=""
            n=int(input("Enter number: "))
            print("\n")
            for i in str(n):
                rev=i+rev
            rev=int(rev)
            if rev==n:
                print(n,"is a Palindrome Number")
            else:
                print(n,"is Not a Palindrome Number")
                
                
        case 3:
            rev=""
            n=int(input("Enter number: "))
            print("\n")
            for i in str(n):
                rev=i+rev
            rev=int(rev)    
            print("Reversed Number is:",rev)    
        case 4:
            count=0
            n=int(input("Enter number: "))
            print("\n") 
            for i in str(n):
                count+=1
            print("Total digits:",count)    
        case 5:
            print("\n")
            print("Exiting program... Thank you!")
            break
        case _:
            print("\n")
            print("Invalid choice. Please try again.")