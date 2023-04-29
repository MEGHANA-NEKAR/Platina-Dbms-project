import datetime

import pandas as pd
import streamlit as st
from database import view_all_data, view_only_names, get_manufacturer, edit_manufacturer_data


def update():
    result = view_all_data()
    # st.write(result)
    df = pd.DataFrame(result, columns=['Mid', 'Name', 'Email', 'Contact', 'City'])
    with st.expander("Current Manufacturer"):
        st.dataframe(df)
    list_of_manufacturers = [i[0] for i in view_only_names()]
    selected_manufacturer = st.selectbox("Manufacturer to Edit", list_of_manufacturers)
    selected_result = get_manufacturer(selected_manufacturer)
    # st.write(selected_result)
    if selected_result:
        Mid = selected_result[0][0]
        Name = selected_result[0][1]
        Email = selected_result[0][2]
        Contact = selected_result[0][3]
        City = selected_result[0][4]

        # Layout of Create

        col1, col2 = st.columns(2)
        with col1:
            new_Mid = st.text_input("ID:", Mid)
            new_Name = st.text_input("Name:", Name)
            new_Email = st.text_input("Email:", Email)
            new_Contact = st.text_input("Contact:", Contact)
        with col2:
            new_City = st.selectbox(City, ["Bengaluru", "Chennai", "Mumbai","Hydrabad","Delhi"])
           
        if st.button("Update Manufacturer"):
            edit_manufacturer_data(new_Mid, new_Name, new_Email, new_Contact, new_City, Mid, Name, Email, Contact, City)
            st.success("Successfully updated:: {} to ::{}".format(Name, new_Name))

    result2 = view_all_data()
    df2 = pd.DataFrame(result2, columns=['Mid', 'Name', 'Email', 'Contact', 'City'])
    with st.expander("Updated data"):
        st.dataframe(df2)
