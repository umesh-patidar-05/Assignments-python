from database.connection import Database
from model.product import Product

class ProductDao:
    def getproduct(self):
        print("dao getting product data")
        db = Database()
        conn = db.connect()
        cursor = conn.cursor()
        query = "select * from productpd"
        cursor.execute(query)
        rows = cursor.fetchall()
        products = []
        for row in rows:
            product = Product(row[0], row[1], row[2])
            products.append(product)
        return products
                       
    def add_product(self, product):
        print("dao saving product data")
        print("ID", product.id)
        print("Name", product.name)
        print("Price", product.price)

        db = Database()
        conn = db.connect() 
        cursor = conn.cursor()
        query = "insert into productpd( pid, pname, price) VALUES(%s, %s, %s)"
        data = (product.id, product.name, product.price)

        cursor.execute(query, data)
        conn.commit()
        conn.close()
        print("data saved successfully plz check the table")