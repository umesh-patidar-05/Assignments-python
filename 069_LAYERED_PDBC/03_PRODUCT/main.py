from service.product_service import ProductService
from model.product import Product

print("Welcome to our website")

service = ProductService()
service.displayproduct()


# product = Product(6, "bottle", 120)

# service.add_product(product)