# pip install mysql-connector-python
import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="kill7",
    database="platina",
    port=8080
)
c = mydb.cursor()


def create_table():
    c.execute('CREATE TABLE IF NOT EXISTS MANUFACTURER(Mid TEXT, Name TEXT, Email TEXT, Contact TEXT, City TEXT )')
              


def add_data(Mid, Name, Email, Contact, City):
    c.execute('INSERT INTO MANUFACTURER(Mid, Name, Email, Contact, City) VALUES (%s,%s,%s,%s,%s)',(Mid, Name, Email, Contact, City))
    mydb.commit()


def view_all_data():
    c.execute('SELECT * FROM MANUFACTURER')
    data = c.fetchall()
    return data


def view_only_names():
    c.execute('SELECT Name FROM MANUFACTURER')
    data = c.fetchall()
    return data


def get_manufacturer(Name):
    c.execute('SELECT * FROM MANUFACTURER WHERE Name="{}"'.format(Name))
    data = c.fetchall()
    return data


def edit_manufacturer_data(new_Mid, new_Name, new_Email, new_Contact, new_City, Mid, Name, Email, Contact, City):
    c.execute("UPDATE MANUFACTURER SET Mid=%s, Name=%s, Email=%s, Contact=%s, City=%s WHERE "
              "Mid=%s and Name=%s and Email=%s and Contact=%s and City=%s", (new_Mid, new_Name, new_Email, new_Contact, new_City, Mid, Name, Email, Contact, City))
    # mydb.commit()
    # data = c.fetchall()
    # return data


def delete_data(Name):
    c.execute('DELETE FROM MANUFACTURER WHERE Name="{}"'.format(Name))
    mydb.commit()


def db_any_query(q):
    c.execute(q)
    data = c.fetchall()
    mydb.commit()
    return data

