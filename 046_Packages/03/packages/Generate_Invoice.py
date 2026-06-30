def invoice(name,price,tax=18):
    print("\nProduct Name :",name)
    print("Price :",price)
    print("Tax : ",tax)
    amount=price + (price*tax/100)
    print("Final Amount :",amount)