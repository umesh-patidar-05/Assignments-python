patient_details=[]

def add_patient():
    idd=int(input("Patient ID: "))
    name=input("Patient Name: ")
    age=int(input("Patient Age: "))
    gender=input("Patent Gender: ")
    disease=input("Patient Disease: ")
    number=input("Patient Mobile Number: ")
    
    patient_details.append({"Patient ID": idd,
                            "Patient Name": name,
                            "Age": age,
                            "Gender": gender,
                            "Disease": disease,
                            "Mobile Number": number})
    


def display_patients():
    for p in patient_details:
        print()
        for key,value in p.items():
            print(f"{key} : {value}")


def search_patient():
    pat_id=int(input("Enter Patient ID: "))
    found=0
    print()
    for p in patient_details:
        if p["Patient ID"] == pat_id:
            found=1
            for k,v in p.items():
                print(f"{k} : {v}")
            break    
    if found==0:
        print("No Patient found...")        

