import mysql.connector


class Database:
    def connect(self):
        # connection = mysql.connector.connect(host = 'localhost', user = 'pythonuser', password = 'Python@1234', database = 'batch18')
        connection = mysql.connector.connect(host = 'localhost', user = 'root', password = '@umesh2005', database = 'assignments')
        return connection