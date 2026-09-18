from dao.product_dao import ProductDao

class ProductService:
    def displayproduct(self):
        print("processing employee request")
        dao = ProductDao()
        dao.getproduct()

    def add_product(self, product):
        print("Service adding product")
        dao = ProductDao()
        dao.add_product(product)