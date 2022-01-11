import streamlit as st
import pandas as pd
import plotly.graph_objects as go

from views_functions import channel_function, display_data, timeslot_function, week_function

info = pd.read_csv('data\csv\info.csv').set_index('Show').sort_index()

select = st.sidebar.selectbox('Choose', ['BARC Data (Raw Data)', 'Channel', 'Shows - TV TRP', 'Shows - Online TRP', 'Leaders', 'Compare Shows'], key=1)

if (select == 'BARC Data (Raw Data)'):
    display_data(info)
    
elif (select == 'Channel'):
    st.title('Channel')

elif (select == 'Shows - TV TRP'):
    st.title('Shows - TV TRP')

    trp = pd.read_csv('data\csv\\tv_trp_trp.csv').set_index('Show').sort_index()
    rank = pd.read_csv('data\csv\\tv_trp_rank.csv').set_index('Show').sort_index()

    week = week_function(trp,rank)  
    channel_function(week, info, trp, rank)
    timeslot_function(week, info, trp, rank) 

elif (select == 'Shows - Online TRP'):
    st.title('Shows - Online TRP')

    trp = pd.read_csv('data\csv\online_trp_trp.csv').set_index('Show').sort_index()
    rank = pd.read_csv('data\csv\online_trp_rank.csv').set_index('Show').sort_index()

    week = week_function(trp,rank)

elif (select == 'Leaders'):
    st.title('Leaders')
    st.subheader('Channel Leader')
    st.subheader('Timeslot Leader')

elif (select == 'Compare Shows'):
    st.title('Compare Shows')

else:
    st.title('Others')