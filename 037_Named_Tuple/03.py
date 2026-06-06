'''
=====================================================================
QUESTION 3: HOSPITAL PATIENT TRACKER
====================================

A hospital stores patient records for daily monitoring.

Fields:
patient_id, patient_name, age, disease

Requirements:

1. Read N patient records from the user and store them in a list of NamedTuples.

---

2. Display all patient details.

---

3. Display patients whose age is above 60 years.

---

4. Search for a patient using Patient ID.

---

5. Count the number of patients suffering from a particular disease.

---

Test Case:

Input:
Enter number of patients: 4

P101 Rajesh 65 Diabetes
P102 Suman 45 Fever
P103 Mohan 70 Diabetes
P104 Rita 35 Cold

Enter Patient ID: P103
Enter Disease: Diabetes

Expected Output:
Patient Found:
P103 Mohan 70 Diabetes

Patients Above 60:
P101 Rajesh 65 Diabetes
P103 Mohan 70 Diabetes

Patients with Diabetes:
2
'''




from collections import namedtuple
n=int(input("Enter number of patients: "))
patient=namedtuple("patient",["patient_id", "patient_name", "age", "disease"])
pat=[]
for i in range(n):
    print(f"\nEnter patient {i+1} details: ")
    idd=input("Enter id: ")
    nam=input("Enter name: ")
    ag=int(input("Enter age: "))
    disea=input("Enter disease: ")
    pat.append(patient(idd,nam,ag,disea))
#print(pat)    

print("\npatients detais are: ")
for i in pat:
    print(i.patient_id,i.patient_name,i.age,i.disease)
    
pid=input("\nEnter Patient ID: ")    
pdisease=input("Enter Disease: ")
    
print("\nPatients Above 60: ")
for i in pat:
    if i.age>60:
        print(i.patient_id,i.patient_name,i.age,i.disease)
        
print("\nPatient Found:")
for i in pat:
    if i.patient_id==pid:
        print(i.patient_id,i.patient_name,i.age,i.disease)        
        
print(f"\nPatients with {pdisease}:")        
count=0
for i in pat:
    if i.disease==pdisease:
        count+=1
print(count)        