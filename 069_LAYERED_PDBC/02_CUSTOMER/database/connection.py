import mysql.connector

class DataBase:
    def connect(self):
        connection = mysql.connector.connect(host = 'localhost', user = 'pythonuser', password = 'Python@1234', database = 'batch18')
        return connection