from service.product_service import ProductService
from model.product import Product

print("Welcome to our website")

while True:
    print("1. Show all Product")
    print("2. Add new Product")
    print("3. Exit")

    choice = int(input("Enter your choice: "))
    match choice:
        case 1:
            service = ProductService()
            products = service.displayproduct()
            for product in products:
                print('ID', product.id)
                print("Name", product.name)
                print("Price", product.price)



        case 2:
            id = int(input("Enter product id: "))
            name = input("Enter product name: ")
            price = float(input("Enter product price"))

            product = Product(id, name, price)

            service.add_product(product)

        case 3:
            print("Thank you...")
            break