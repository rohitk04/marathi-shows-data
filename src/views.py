from numpy import mod
import streamlit as st
import pandas as pd
import plotly.graph_objects as go
from input import read_csv

from views_functions import channel_function, comparison_function, display_data, timeslot_function, week_function

info = read_csv('data/csv/shows/info.csv', 'Show')

select = st.sidebar.selectbox('Choose', ['BARC Data (Raw Data)', 'Channel', 'Shows - TV TRP', 'Shows - Online TRP', 'Leaders', 'Compare Shows'], key=1)

if (select == 'BARC Data (Raw Data)'):
    display_data(info)
    
elif (select == 'Channel'):
    st.title('Channel')

    trp = read_csv('data/csv/channels/channels_grp.csv', 'Channel')
    rank = read_csv('data/csv/channels/channels_rank.csv', 'Channel')

    if (st.sidebar.checkbox("Show Weekwise Performance",value=True,key=12)):
        week = week_function(trp, rank, 2,3, True)
    
    if (st.sidebar.checkbox("Show comparison of channels",key=13)):
        st.markdown('### Comparison')

        channels = list(trp.index.unique())
        choices = st.sidebar.multiselect('Compare channels',channels,key=11, default=channels[0])

        if (len(choices)!=0):
            comparison_function(trp, rank, choices)
        else:
            st.markdown("##### Please select channels")

elif (select == 'Shows - TV TRP'):
    st.title('Shows - TV TRP')

    trp = read_csv('data/csv/shows/tv/tv_trp_trp.csv', 'Show')
    rank = read_csv('data/csv/shows/tv/tv_trp_rank.csv', 'Show')

    week = week_function(trp,rank, 4, 5)      
    channel_function(week, info, trp, rank)
    timeslot_function(week, info, trp, rank) 

elif (select == 'Shows - Online TRP'):
    st.title('Shows - Online TRP')

    trp = read_csv('data/csv/shows/online/online_trp_trp.csv', 'Show')
    rank = read_csv('data/csv/shows/online/online_trp_rank.csv', 'Show')

    week = week_function(trp,rank,10,11)

elif (select == 'Leaders'):
    st.title('Leaders')
    st.subheader('Channel Leader')
    st.subheader('Timeslot Leader')

elif (select == 'Compare Shows'):
    st.title('Compare Shows')

else:
    st.title('Others')