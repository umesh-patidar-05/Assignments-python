import patient
import doctor
import appointment
import billing

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
            patient.patient_module.add_patient()
            print("\npatient details added successfully...")

        case 2:
            print("patients details are:")
            patient.patient_module.display_patients()
            

        case 3:
            patient.patient_module.search_patient()

        case 4:
            doctor.doctor_module.add_doctor()
            print("\nDoctor details added successfully...")

        case 5:
            print("Doctors details are:\n")
            doctor.doctor_module.display_doctors()

        case 6:
            appointment.appointment_module.book_appointment()
            print("\nAppointment booked successfully")

        case 7:
            print("Appointments are:\n")
            appointment.appointment_module.show_appointments()

        case 8:
            billing.billing_module.generate_bill()

        case 9:
            print("Thannk youu...")
            break

        case _:
            print("invalid choice....")    