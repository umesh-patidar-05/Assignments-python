'''
NUMBER ANALYSIS SYSTEM

Scenario:

A software company wants to develop a Number Analysis System. The application should be menu-driven and perform different mathematical operations on a given number.

MENU

1. Check Perfect Number
2. Check Prime Number
3. Find Reverse of a Number
4. Calculate Factorial
5. Display Factors of a Number
6. Exit

Requirements

Choice 1 – Check Perfect Number

* Accept a number from the user.
* Pass the number to a function.
* The function should return True if the number is Perfect, otherwise False.
* Display an appropriate message based on the returned value.

Choice 2 – Check Prime Number

* Accept a number from the user.
* Pass the number to a function.
* The function should return a message such as "Prime Number" or "Not a Prime Number".
* Display the returned message.

Choice 3 – Find Reverse of a Number

* Accept a number from the user.
* Pass the number to a function.
* The function should return the reversed number.
* Display the returned value.

Choice 4 – Calculate Factorial

* Accept a number from the user.
* Pass the number to a function.
* The function should return the factorial value.
* Display the returned value.

Choice 5 – Display Factors of a Number

* Accept a number from the user.
* Pass the number to a function.
* The function should return all factors of the given number.
* Display the returned factors.

Choice 6 – Exit

Sample Output

Enter Choice : 1

Enter Number : 28

28 is a Perfect Number

---

Enter Choice : 2

Enter Number : 17

Prime Number

---

Enter Choice : 3

Enter Number : 1234

Reverse Number : 4321

---

Enter Choice : 4

Enter Number : 5

Factorial : 120

---

Enter Choice : 5

Enter Number : 12

Factors : 1 2 3 4 6 12

---

Important Instructions

1. Create separate functions for each operation.
2. Use parameters to pass values to functions.
3. Use return statements appropriately.
4. Different functions should return different types of values such as Boolean, String, Integer, and Collection/List.
5. Avoid using global variables.
6. Implement the solution using a menu-driven approach.
7. Write meaningful function names and maintain proper code readability.
'''




from packages import perfect_number,prime_number,reverse_number,factorial_calculate,factor_calculate
    


print("""\nMENU
1. Check Perfect Number
2. Check Prime Number
3. Find Reverse of a Number
4. Calculate Factorial
5. Display Factors of a Number
6. Exit""")
while True:
    choice=int(input("\nEnter choice: "))
    match choice:
        case 1:
            n=int(input("\nEnter Number : "))
            print()
            if perfect_number.perfect(n)==True:
                print(n,"is a Perfect Number")
            else:
                print(n,"is NOT a Perfect Number")    

        case 2:
            n=int(input("\nEnter Number : "))
            print()
            print(prime_number.prime(n))
         
        case 3:
            n=int(input("\nEnter Number : "))
            print()
            print("Reverse Number :",reverse_number.reverse(n))

        case 4:
            n=int(input("\nEnter Number : "))
            print()    
            print("Factorial :",factorial_calculate.factorial(n))

        case 5:
            n=int(input("\nEnter Number : "))
            print()
            print("Factors : ",end="")
            for i in factor_calculate.factors(n):
                print(i,end=" ")
            print()

        case 6:
            print("\nThank you...")
            break     

        case _:
            print("\nInvalid choice: ")