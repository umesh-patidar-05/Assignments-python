bill_details = []
def generate_bill():
    idd=int(input("Patient ID: "))
    consulation=int(input("Consultation Charges: "))
    medicine=int(input("Medicine Cost: "))
    test_charges=int(input("Test Charges: "))
    total=consulation + medicine + test_charges

    print("Final Bill:\n")
    print("------------------------------------------")
    print("Consultation Charges  :  ",consulation)
    print("Medicine Cost         :  ",medicine)
    print("Test Charges          :  ",test_charges)
    print("------------------------------------------")
    print("           Total Bill =  ",total)

