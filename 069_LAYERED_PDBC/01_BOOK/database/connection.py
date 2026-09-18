import mysql.connector 

class Database:
    def connect(self):
        connection = mysql.connector.connect(user='root', password = "@umesh2005", host = 'localhost', database = 'assignments')
        return connection