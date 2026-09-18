import mysql.connector

class Database:
    def connect(self):
        print("CONNECTION FILE RUNNING")
        connection = mysql.connector.connect(host = 'localhost', user = 'root', password = '@umesh2005', database = 'assignments')
        return connection