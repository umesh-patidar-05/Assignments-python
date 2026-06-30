from datetime import datetime

appoitnment_details=[]

def book_appointment():
    app_idd=int(input("Appointment ID: "))
    pat_idd=int(input("Patient ID: "))
    doc_idd=int(input("Doctor ID: "))
    date=datetime.strptime(input("Appointment date(dd-mm-yyyy): "), "%d-%m-%Y").date()
    time=datetime.strptime(input("Appointment Time(HH:MM): "), "%H:%M").time()

    appoitnment_details.append({"Appointment ID": app_idd,
                                "Patient ID": pat_idd,
                                "Doctor ID": doc_idd,
                                "Appointment Date": date,
                                "Appointment Time": time
                                })
    

def show_appointments():
    for appo in appoitnment_details:
        print()
        for key,value in appo.items():
            print(f"{key} : {value}")