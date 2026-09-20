import mysql.connector

class DataBase:
    def connect(self):
        connection = mysql.connector.connect(host='localhost', user='root', password='@umesh2005', database = 'assignments')
        return connection    