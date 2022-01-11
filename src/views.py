import streamlit as st
import pandas as pd
import plotly.graph_objects as go

from views_functions import channel_function, timeslot_function, trp_function, rank_function, week_function

st.title("BARC Data")
st.sidebar.title("BARC Data")

info = pd.read_csv('data\csv\info.csv').set_index('Show').sort_index()
st.dataframe(info)

select = st.sidebar.selectbox('Choose', ['Channel', 'Shows - TV TRP', 'Shows - Online TRP'], key=1)
if (select == 'Channel'):
    st.subheader('Channel')
elif (select == 'Shows - TV TRP'):
    st.subheader('Shows - TV TRP')

    trp = pd.read_csv('data\csv\\tv_trp_trp.csv').set_index('Show').sort_index()
    rank = pd.read_csv('data\csv\\tv_trp_rank.csv').set_index('Show').sort_index()

    week = week_function(trp,rank)  
    channel_function(week, info, trp, rank)
    timeslot_function(week, info, trp, rank)
    
    st.markdown('#### TRP')
    st.dataframe(trp.style.format("{:.2f}"))
    
    st.markdown('#### Rank')
    st.dataframe(rank)
elif (select == 'Shows - Online TRP'):
    st.subheader('Shows - Online TRP')

    trp = pd.read_csv('data\csv\online_trp_trp.csv').set_index('Show').sort_index()
    rank = pd.read_csv('data\csv\online_trp_rank.csv').set_index('Show').sort_index()

    week = week_function(trp,rank)
    
    st.markdown('#### TRP')
    st.dataframe(trp.style.format("{:.2f}"))
    
    st.markdown('#### Rank')
    st.dataframe(rank)
else:
    st.subheader('Others')