from database.connection import Database
from model.book import Book

class BookDao:

    def get_all_book(self):
        db = Database()
        conn = db.connect()
        cursor = conn.cursor()
        query = "SELECT * FROM book_pdbc"
        cursor.execute(query)
        rows = cursor.fetchall()
        books = []
        for row in rows:
            book = Book( row[0], row[1], row[2], row[3])
            books.append(book)
        cursor.close()
        conn.close()
        return books

    def save_book(self, book):
        print("ID", book.id)
        print("Name", book.name)
        print("Author", book.author)
        print("Price", book.price)

        db = Database()
        conn = db.connect()
        cursor = conn.cursor()
        query = "INSERT INTO book_pdbc VALUES(%s, %s, %s, %s)"
        data = (book.id, book.name, book.author, book.price)
        cursor.execute(query, data)
        conn.commit()
        print("New book added successfully")
            
