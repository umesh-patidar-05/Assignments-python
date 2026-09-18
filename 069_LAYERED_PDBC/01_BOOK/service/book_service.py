from dao.book_dao import BookDao

class BookService:
    def display_all_books(self):
        book = BookDao()
        books = book.get_all_book()
        return books

    def add_book(self, book):
        new_book = BookDao()
        new_book.save_book(book)