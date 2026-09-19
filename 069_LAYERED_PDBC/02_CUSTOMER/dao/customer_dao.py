from database.connection import DataBase
from model.customer import Customer

class CustomerDao:
    def get_all_customer(self):
        db = DataBase()
        conn = db.connect()
        cursor = conn.cursor()
        query = "SELECT * FROM customerpd"
        cursor.execute(query)
        rows = cursor.fetchall()
        customers = []
        for row in rows:
            customer = Customer(row[0], row[1], row[2], row[3])
            customers.append(customer)
        cursor.close()    
        conn.close()
        return customers

    def add_new_customer(self, customer):

        db = DataBase()
        conn = db.connect()
        cursor = conn.cursor()
        query = "INSERT INTO customerpd VALUES( %s, %s , %s , %s)"
        data = (customer.id, customer.name, customer.dob, customer.address)
        cursor.execute(query, data)
        conn.commit()
        cursor.close()    
        conn.close()

    