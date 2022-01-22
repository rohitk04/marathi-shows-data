from numpy import mod
import streamlit as st
import pandas as pd
from tenacity import time
from input import read_csv

from views_functions import channel_function, comparison_function, display_data, find_leaders, find_top_shows, merge, performance_comparison, rank_function, timeslot_function, trp_function, week_function

info = read_csv('data/csv/shows/info.csv', 'Show')

select = st.sidebar.selectbox('Choose', ['BARC Data (Raw Data)', 'Channel', 'Shows - TV TRP', 'Leaders', 'Mahaepisode', 'Shows - Online TRP', 'Compare Shows'], key=1)

if (select == 'BARC Data (Raw Data)'):
    display_data(info)
    
elif (select == 'Channel'):
    st.title('Channel')

    trp = read_csv('data/csv/channels/channels_grp.csv', 'Channel')
    rank = read_csv('data/csv/channels/channels_rank.csv', 'Channel')

    if (st.sidebar.checkbox("Show Weekwise Performance",value=True,key=6)):
        week = week_function(trp, rank, 7,8, True)
    
    if (st.sidebar.checkbox("Show comparison of channels",key=9)):
        st.markdown('### Comparison')

        channels = list(trp.index.unique())
        choices = st.sidebar.multiselect('Compare channels',channels, default=channels[0], key=10)

        if (len(choices)!=0):
            comparison_function(trp, rank, choices, 'Show Data', 11, True)
        else:
            st.markdown("##### Please select channels")

elif (select == 'Shows - TV TRP'):
    st.title('Shows - TV TRP')

    trp = read_csv('data/csv/shows/tv/tv_trp_trp.csv', 'Show')
    rank = read_csv('data/csv/shows/tv/tv_trp_rank.csv', 'Show')

    week = week_function(trp,rank, 12, 13)
    if (st.sidebar.checkbox("Show Channelwise Performance",key=14)):      
        channel_function(week, info, trp, rank, 15, 16)
    if (st.sidebar.checkbox("Show Timeslotwise Performance",key=17)):
        timeslot_function(week, trp, rank, info, 18, 19, True) 

elif (select == 'Leaders'):
    st.title('Leaders')
    
    info = read_csv('data/csv/shows/info.csv', 'Show')
    trp = read_csv('data/csv/shows/tv/tv_trp_trp.csv', 'Show')
    rank = read_csv('data/csv/shows/tv/tv_trp_rank.csv', 'Show')
    merged = pd.merge(pd.merge(info, trp, how="inner",left_index=True, right_index=True), rank, how="inner",left_index=True, right_index=True, suffixes=['_trp','_rank'])

    weeks = list(trp.columns.unique())
    week = st.sidebar.selectbox('Choose week', weeks, index=len(weeks)-1, key=34)

    if (st.sidebar.checkbox('Show Top Shows', value=True, key=35)):
        find_top_shows(week, merged)

    if (st.sidebar.checkbox('Show Channel Leaders', key=39)):
        find_leaders('Channel',week, merged, 40)

    if (st.sidebar.checkbox('Show Timeslot Leaders', key=41)):
        find_leaders('Time',week, merged, 42, 43)

    if (st.sidebar.checkbox('Show Type Leaders', key=44)):
        find_leaders('Type', week, merged, 45, 46)

elif (select == 'Mahaepisode'):
    st.title('Mahaepisode')

    trp = read_csv('data/csv/shows/mahaepisode/mahaepisode_trp.csv', 'Show')
    rank = read_csv('data/csv/shows/mahaepisode/mahaepisode_rank.csv', 'Show')
    time_df = read_csv('data/csv/shows/mahaepisode/mahaepisode_time.csv', 'Show')
    
    week = week_function(trp,rank, 48, 49)

    if (st.sidebar.checkbox("Show Channelwise Performance",key=50)):      
        channel_function(week, info, trp, rank, 51, 52)
    
    if (st.sidebar.checkbox("Show Timeslotwise Performance",key=53)):
        timeslot_function(week, trp, rank, time_df, 54, 55)
    
    merged = merge(week, time_df, trp, rank, info)
    
    if (st.sidebar.checkbox('Show Channel Leaders', key=56)):
        find_leaders('Channel',week, merged, 57, explode=False)

    if (st.sidebar.checkbox('Show Timeslot Leaders', key=58)):
        find_leaders('Time',week, merged, 59, 60, False)

    if (st.sidebar.checkbox('Show Type Leaders', key=61)):
        find_leaders('Type', week, merged, 62, 63, False)

elif (select == 'Shows - Online TRP'):
    st.title('Shows - Online TRP')

    trp = read_csv('data/csv/shows/online/online_trp_trp.csv', 'Show')
    rank = read_csv('data/csv/shows/online/online_trp_rank.csv', 'Show')

    week = week_function(trp,rank,20,21)

elif (select == 'Compare Shows'):
    st.title("Shows Comparison")

    tv_trp = read_csv('data/csv/shows/tv/tv_trp_trp.csv', 'Show')
    tv_rank = read_csv('data/csv/shows/tv/tv_trp_rank.csv', 'Show')
    online_trp = read_csv('data/csv/shows/online/online_trp_trp.csv', 'Show')
    online_rank = read_csv('data/csv/shows/online/online_trp_rank.csv', 'Show')

    if (st.sidebar.checkbox("Show Weekwise Performance Comparison",value=True, key=22)):
        st.markdown('### Weekwise Performance Comparison')

        shows = list(info.index.unique())
        choices = st.sidebar.multiselect('Compare shows',shows, default=shows[0], key=23)

        if (len(choices)!=0):
            st.markdown('### TV TRP')
            comparison_function(tv_trp, tv_rank, choices, "Show TV Show - TV TRP & Rank Data",24)
            st.markdown("""<hr style="border:dashed 2px #333" /> """, unsafe_allow_html=True)

            st.markdown('### Online TRP')
            comparison_function(online_trp, online_rank, choices, "Show TV Show - Online TRP & Rank Data",25)
        else:
            st.markdown("##### Please select shows")
        
        st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)

    if (st.sidebar.checkbox("Show Channelwise Performance Comparison", key=26)):
        performance_comparison(info, tv_trp, tv_rank, online_trp, online_rank, 'Channel', 'channel', 27,28,29)
    
    if (st.sidebar.checkbox("Show Timeslotwise Performance Comparison", key=30)):
        performance_comparison(info, tv_trp, tv_rank, online_trp, online_rank, 'Time', 'timeslot', 31,32,33)
else:
    st.title('Others')