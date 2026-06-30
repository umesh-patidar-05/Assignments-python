from appointment import appointment_module
from billing import billing_module
from doctor import doctor_module
from patient import patient_module

while True:
    print("""\n========== Hospital Management System ==========

1. Add Patient
2. Display Patients
3. Search Patient
4. Add Doctor
5. Display Doctors
6. Book Appointment
7. Show Appointments
8. Generate Bill
9. Exit""")
    
    choice=int(input("\nEnter your choice: "))
    print()
    match choice:
        
        case 1:
            patient_module.add_patient()
            print("\npatient details added successfully...")

        case 2:
            print("patients details are:")
            patient_module.display_patients()
            

        case 3:
            patient_module.search_patient()

        case 4:
            doctor_module.add_doctor()
            print("\nDoctor details added successfully...")

        case 5:
            print("Doctors details are:\n")
            doctor_module.display_doctors()

        case 6:
            appointment_module.book_appointment()
            print("\nAppointment booked successfully")

        case 7:
            print("Appointments are:\n")
            appointment_module.show_appointments()

        case 8:
            billing_module.generate_bill()

        case 9:
            print("Thannk youu...")
            break

        case _:
            print("invalid choice....")    