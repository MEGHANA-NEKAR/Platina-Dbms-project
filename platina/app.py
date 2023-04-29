# Importing pakages
import streamlit as st
import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="kill7", 
    port = 8080
    )
c = mydb.cursor()

c.execute("CREATE DATABASE if not exists platina")

from create import create
from database import create_table
from delete import delete
from read import read
from update import update
from query import query



def main():
    st.title("PLATINA-Online Clothing Store")
    menu = ["Add", "View", "Edit", "Remove"]
    choice = st.sidebar.selectbox("Menu", menu)

    create_table()
    if choice == "Add":
        st.subheader("Enter Manufacturer Details:")
        create()

    elif choice == "View":
        st.subheader("View created tasks")
        read()

    elif choice == "Edit":
        st.subheader("Update created tasks")
        update()

    elif choice == "Remove":
        st.subheader("Delete created tasks")
        delete()

    else:
        st.subheader("About tasks")


    st.subheader("Type any SQL query")
    query()

if __name__ == '__main__':
    main()
