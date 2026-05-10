'''
A warehouse management system needs to identify the highest stock level among six different storage units to prioritize dispatch.
 The system should take the quantity of items stored in six units as input. It should compare all six values using nested conditions
 and determine which unit has the maximum stock. Display the highest stock value among all six units.

Input:
Unit1 = 120
Unit2 = 450
Unit3 = 300
Unit4 = 275
Unit5 = 500
Unit6 = 390

Output:
Highest Stock = 500
'''




u1 = int(input("Unit1 = "))
u2 = int(input("Unit2 = "))
u3 = int(input("Unit3 = "))
u4 = int(input("Unit4 = "))
u5 = int(input("Unit5 = "))
u6 = int(input("Unit6 = "))
if u1>u2:
    if u1>u3:
        if u1>u4:
            if u1>u5:
                if u1>u6:
                    print("Highest Stock = ",u1)
                else:
                    print("Highest Stock = ",u6)
            else:
                if u5>u6:
                    print("Highest Stock = ",u5)
                else:
                    print("Highest Stock = ",u6) 
        else:
            if u4>u5:
                if u4>u6:
                    print("Highest Stock = ",u4)
                else:
                    print("Highest Stock = ",u6)
            else:
                if u5>u6:
                    print("Highest Stock = ",u5)
                else:
                    print("Highest Stock = ",u6)
    else:
        if u3>u4:
            if u3>u5:
                if u3>u6:
                    print("Highest Stock = ",u3)
                else:
                    print("Highest Stock = ",u6)
            else:
                if u5>u6:
                    print("Highest Stock = ",u5)
                else:
                    print("Highest Stock = ",u6)
        else:
            if u4>u5:
                if u4>u6:
                    print("Highest Stock = ",u4)
                else:
                    print("Highest Stock = ",u6)
            else:
                if u5>u6:
                    print("Highest Stock = ",u5)
                else:
                    print("Highest Stock = ",u6)
else:
    if u2>u3:
        if u2>u4:
            if u2>u5:
                if u2>u6:
                    print("Highest Stock = ",u2)
                else:
                    print("Highest Stock = ",u6)
            else:
                if u5>u6:
                    print("Highest Stock = ",u5)
                else:
                    print("Highest Stock = ",u6)
        else:
            if u4>u5:
                if u4>u6:
                    print("Highest Stock = ",u4)
                else:
                    print("Highest Stock = ",u6)
            else:
                if u5>u6:
                    print("Highest Stock = ",u5)
                else:
                    print("Highest Stock = ",u6)
    else:
        if u3>u4:
            if u3>u5:
                if u3>u6:
                    print("Highest Stock = ",u3)
                else:
                    print("Highest Stock = ",u6)
            else:
                if u5>u6:
                    print("Highest Stock = ",u5)
                else:
                    print("Highest Stock = ",u6)
        else:
            if u4>u5:
                if u4>u6:
                    print("Highest Stock = ",u4)
                else:
                    print("Highest Stock = ",u6)
            else:
                if u5>u6:
                    print("Highest Stock = ",u5)
                else:
                    print("Highest Stock = ",u6)
                
    