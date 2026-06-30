doctor_details=[]

def add_doctor():
    idd=int(input("Doctor ID: "))
    name=input("Doctor Name: ")
    specialization=input("Specialization: ")
    experience=input("Experience: ")
    fees=int(input("Consultation Fees: "))

    doctor_details.append({"Doctor ID": idd,
                           "Doctor Name": name,
                           "Specialization": specialization,
                           "Experience": experience,
                           "Consultation Fees": fees
                           })
    


def display_doctors():
    for d in doctor_details:
        print()
        for key,value in d.items():
            print(f"{key} : {value}")
            