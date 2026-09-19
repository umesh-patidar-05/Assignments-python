from dao.customer_dao import CustomerDao

class CustomerService:
    def display_all_customer(self):
        cus = CustomerDao()
        customers = cus.get_all_customer()
        return customers

    def new_customer_add(self, customer):
        cus = CustomerDao()
        cus.add_new_customer(customer)
