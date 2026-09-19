from service.customer_service import CustomerService
from model.customer import Customer




while True:
    print("1. show customer details")
    print("2. add customer")
    print("3. Exit")
    print()
    choice = int(input("Enter your choice: "))
    match choice:
        case 1:

            service = CustomerService()
            data = service.display_all_customer()
            print("id       name                  dob        address")
            for i in data:
                print(f"{i.id}     {i.name}         {i.dob}      {i.address}")

        case 2:
            id = int(input("Enter customer id: "))
            name = input("Entr customer name: ")
            dob = input("Enter dob: ")
            address = input("Enter address: ")
            
            customer = Customer(id,name,dob, address)
            service = CustomerService()
            service.new_customer_add(customer)
            print("Customer added successfully")

        case 3:
            print("Thank youuu")
            break

        case _:
            print("invalid choice")