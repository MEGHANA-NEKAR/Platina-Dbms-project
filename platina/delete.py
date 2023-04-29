import pandas as pd
import streamlit as st
from database import view_all_data, view_only_names, delete_data


def delete():
    result = view_all_data()
    df = pd.DataFrame(result, columns=['Mid', 'Name', 'Email', 'Contact', 'City'])
    with st.expander("Current data"):
        st.dataframe(df)

    list_of_manufacturers = [i[0] for i in view_only_names()]
    selected_manufacturer = st.selectbox("Task to Delete", list_of_manufacturers)
    st.warning("Do you want to delete ::{}".format(selected_manufacturer))
    if st.button("Delete Manufacturer"):
        delete_data(selected_manufacturer)
        st.success("Manufacturer has been deleted successfully")
    new_result = view_all_data()
    df2 = pd.DataFrame(new_result, columns=['Mid', 'Name', 'Email', 'Contact', 'City'])
    with st.expander("Updated data"):
        st.dataframe(df2)