import streamlit as st
import pandas as pd
import plotly.graph_objects as go

from views_functions import week_function, rank_function

st.title("BARC Data")
st.sidebar.title("BARC Data")

info = pd.read_csv('data\csv\info.csv').set_index('Show').sort_index()
st.dataframe(info)

select = st.sidebar.selectbox('Choose', ['TV TRP', 'Online TRP'], key=1)
if (select == 'TV TRP'):
    st.subheader('TV TRP')

    trp = pd.read_csv('data\csv\\tv_trp_trp.csv').set_index('Show').sort_index()
    rank = pd.read_csv('data\csv\\tv_trp_rank.csv').set_index('Show').sort_index()

    weeks = trp.columns.unique()
    week = st.sidebar.selectbox('Choose week', weeks, key=2, index=len(weeks)-1)
    ch = st.sidebar.checkbox('Show Data')

    st.markdown('### ' + week)

    # Part 1 - TV TRP - Week - TRP
    week_function(trp, week, ch)

    channels = list(info['Channel'].unique())
    channel = st.sidebar.selectbox('Choose channel', channels, key=3)

    timeslots = list(info['Time'].unique())
    timeslot = st.sidebar.selectbox('Choose timeslot', timeslots, key=4)

    st.markdown('#### TRP')
    st.dataframe(trp.style.format("{:.2f}"))
    
    st.markdown('#### Rank')
    st.dataframe(rank)
elif (select == 'Online TRP'):
    st.subheader('Online TRP')

    trp = pd.read_csv('data\csv\online_trp_trp.csv').set_index('Show').sort_index()
    rank = pd.read_csv('data\csv\online_trp_rank.csv').set_index('Show').sort_index()

    st.markdown('#### TRP')
    st.dataframe(trp.style.format("{:.2f}"))
    
    st.markdown('#### Rank')
    st.dataframe(rank)
else:
    st.subheader('Others')