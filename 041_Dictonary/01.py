'''
ASSIGNMENT: HOSPITAL PATIENT RECORD MANAGEMENT SYSTEM:--

A multi-specialty hospital is currently maintaining patient records manually in registers. As the number of patients is increasing, it has become difficult to search, update, and manage records efficiently.

The hospital management has decided to develop a simple Patient Record Management System using Python. The system should store patient information in a nested dictionary where:

Key → Patient ID
Value → Dictionary containing patient details

Each patient record should contain:

Patient Name
Age
Gender
Disease
Doctor Name
Sample Data Structure
{
101:{
    "name":"Ajay",
    "age":35,
    "gender":"Male",
    "disease":"Fever",
    "doctor":"Dr. Sharma"
},
102:{
    "name":"Ravi",
    "age":42,
    "gender":"Male",
    "disease":"Diabetes",
    "doctor":"Dr. Gupta"
}
}
Menu Driven Program

Display the following menu repeatedly until the user chooses Exit.

=====================================
 HOSPITAL PATIENT MANAGEMENT SYSTEM
=====================================

1. Add New Patient
2. Search Patient
3. Update Patient Disease
4. Delete Patient Record
5. Display All Patients
6. Count Total Patients
7. Display Patients By Disease
8. Display Oldest Patient
9. Display Youngest Patient
10. Exit

Functional Requirements
1. Add New Patient

Accept the following information from the user:

Patient ID
Patient Name
Age
Gender
Disease
Doctor Name

Store the record in the nested dictionary.

Validation:
If the Patient ID already exists, display:

Patient ID already exists.

2. Search Patient

Accept Patient ID from the user.

If the patient exists, display complete information.

Sample Output

Patient ID : 101
Name       : Ajay
Age        : 35
Gender     : Male
Disease    : Fever
Doctor     : Dr. Sharma

If Patient ID is not found:

Patient Record Not Found

3. Update Patient Disease

Accept Patient ID.

If found:

Ask for new disease.
Update the disease information.

Sample Output

Disease Updated Successfully
4. Delete Patient Record

Accept Patient ID.

If found:

Remove the patient record.

Sample Output

Patient Record Deleted Successfully

Otherwise:

Patient Not Found
5. Display All Patients

Display all patient records in a formatted manner.

Sample Output

--------------------------------
Patient ID : 101
Name       : Ajay
Age        : 35
Disease    : Fever
Doctor     : Dr. Sharma
--------------------------------

Patient ID : 102
Name       : Ravi
Age        : 42
Disease    : Diabetes
Doctor     : Dr. Gupta
6. Count Total Patients

Display the total number of patients currently stored.

Sample Output

Total Patients : 25
7. Display Patients By Disease

Accept a disease name from the user.

Display all patients suffering from that disease.

Sample Output

Enter Disease : Fever

101  Ajay
108  Aman
115  Neha

If no patient is found:

No Patient Found
8. Display Oldest Patient

Find and display the patient having the highest age.

Sample Output

Oldest Patient Details

Patient ID : 110
Name       : Ravi
Age        : 68
Disease    : Diabetes
Doctor     : Dr. Gupta
9. Display Youngest Patient

Find and display the patient having the minimum age.

Sample Output

Youngest Patient Details

Patient ID : 121
Name       : Riya
Age        : 4
Disease    : Viral Fever
Doctor     : Dr. Mehta
10. Exit

Terminate the application.

Sample Output

Thank You For Using Hospital Patient Management System
'''



record={}
while True:
    print("""\n=====================================
 HOSPITAL PATIENT MANAGEMENT SYSTEM
=====================================
\n1. Add New Patient
2. Search Patient
3. Update Patient Disease
4. Delete Patient Record
5. Display All Patients
6. Count Total Patients
7. Display Patients By Disease
8. Display Oldest Patient
9. Display Youngest Patient
10. Exit""")
    
    choice=int(input("\nEnter your choice: "))
    match choice:
        case 1:
            data={}
            idd=int(input("\nEnter patient id: "))
            if idd in record:
                print("\nPatient ID already exists")
            else:    
                nam=input("Enter patient name: ")
                ag=int(input("Enter age: "))
                gen=input("Enter gender: ")
                dis=input("Enter disease: ")
                doc=input("Enter doctor name: ")
                data={"name":nam, "age":ag, "gender":gen, "disease":dis, "doctor":doc}
                record[idd]=data
            print("New patient added succesfully ")    
            #print(record)

        case 2:
            find_id=int(input("\nEnter patient Id: "))
            if find_id in record:
                print("\nPatient ID :",find_id)
                for k,v in record[find_id].items():
                    print(k.ljust(10," "),":",v)
            else:
                print("\nPatient Record Not Found")        

        case 3:
            find_id=int(input("\nEnter patient Id: "))
            if find_id in record:
                new_dis=input("\nEnter new disease: ")  
                record[find_id]["disease"]=new_dis
                print("\nDisease Updated Successfully")
            else:
                print(f"\nPatient with id {find_id} not exist")  

        case 4:
            find_id=int(input("\nEnter patient Id: "))
            if find_id in record:
                del record[find_id]
                print("\nPatient Record Deleted Successfully")
            else:
                print("\nPatient Not Found")

        case 5:
            for k,v in record.items():
                print("\n----------------------------")
                print("Patient ID :",k)
                for i,j in v.items():
                    print(i.ljust(10," "),":",j)
                print("----------------------------")

        case 6:
            print("\nTotal Patients :",len(record))    

        case 7:
            find_dis=input("\nEnter Disease : ")
            found=0
            for k,v in record.items():
                if find_dis in v["disease"]:
                    print(k,"  ",v["name"])
                    found=1
            if found==0:
                print("\nNo Patient Found")        
        
        case 8:
            if(len(record)!=0):
                oldest=list(record.keys())[0]
                old=record[oldest]["age"]
                for k,v in record.items():
                    if v["age"]>old:
                        oldest=k
                        old=v["age"]
                print("\nOldest Patient Details")        
                print("\nPatient ID :",oldest)
                for k,v in record[oldest].items():
                    print(k.ljust(10," "),":",v)       
            else: 
                print("\nno patient records found: ")

        case 9:
            if(len(record)!=0):
                Youngest=list(record.keys())[0]
                young=record[Youngest]["age"]
                for k,v in record.items():
                    if v["age"]<young:
                        Youngest=k
                        young=v["age"]
                print("\nYoungest Patient Details")        
                print("\nPatient ID :",Youngest)
                for k,v in record[Youngest].items():
                    print(k.ljust(10," "),":",v) 
            else: 
                print("\nno patient records found: ")         

        case 10:
            print("\nThank You For Using Hospital Patient Management System")
            break    
        
        case _:
            print("\nInvalid choice: ")