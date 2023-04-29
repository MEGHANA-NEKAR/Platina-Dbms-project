import email
import pandas as pd
import streamlit as st
import plotly.express as px
from database import view_all_data


def read():
    result = view_all_data()
    # st.write(result)
    df = pd.DataFrame(result, columns=['Mid', 'Name', 'Email', 'Contact', 'City'])
    with st.expander("View all Manufacturer"):
        st.dataframe(df)
   