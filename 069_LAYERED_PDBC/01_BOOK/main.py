from service.book_service import BookService
from model.book import Book

while True:
    print()
    print("WELCOME")
    print()
    print("1. Show Books")
    print("2. Add new Book")
    print("3. Exit")
    print()
    choice = int(input("Enter your choice: "))
    match choice:
        case 1:
            show = BookService()
            all = show.display_all_books()
            print("id         Name                       Author                   Price")
            for book in all:
                print(f"{book.id}               {book.name}           {book.author}     {book.price}")
                

        case 2:
            add = BookService()
            id = int(input("Enter book id: "))
            name = input("Enter book name: ")
            author = input("Enter author name: ")
            price = float(input("Enter price: "))

            new = Book(id, name, author, price)

            add.add_book(new)

        case 3:
            print("Thank you...")
            break

        case _:
            print("invalid choice. choose correct")            

