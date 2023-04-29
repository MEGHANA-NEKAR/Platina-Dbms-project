import streamlit as st
from database import add_data


def create():
    col1 , col2= st.columns(2)
    with col1:
        Mid = st.text_input("ID:")
        Name = st.text_input("Name:")
        Email = st.text_input("Email:")
        Contact = st.text_input("Contact:")
    with col2:
        City = st.selectbox("City", ["Bengaluru", "Chennai", "Mumbai","Hydrabad","Delhi"])
    
    if st.button("Add Manufacturer"):
        print (Mid, Name, Email,Contact,City)
        add_data(Mid, Name, Email, Contact , City)
        st.success("Successfully added Manufacturer: {}".format(Name))
