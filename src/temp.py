import streamlit as st
import pandas as pd
import plotly.graph_objects as go

from input import read_csv
from temp_function import find_leaders, find_top_shows

df1 = read_csv('data/csv/shows/info.csv', 'Show')
df2 = read_csv('data/csv/shows/tv/tv_trp_trp.csv', 'Show')
df3 = read_csv('data/csv/shows/tv/tv_trp_rank.csv', 'Show')
df4 = pd.merge(pd.merge(df1, df2, how="inner",left_index=True, right_index=True), df3, how="inner",left_index=True, right_index=True, suffixes=['_trp','_rank'])

weeks = list(df2.columns.unique())
week = st.sidebar.selectbox('Choose week', weeks, index=len(weeks)-1, key=34)

if (st.sidebar.checkbox('Show Top Shows', value=True, key=35)):
    find_top_shows(week, df4)

if (st.sidebar.checkbox('Show Channel Leaders', key=39)):
    find_leaders('Channel',week, df4, 40)

if (st.sidebar.checkbox('Show Timeslot Leaders', key=41)):
    find_leaders('Time',week, df4, 42, 43)

if (st.sidebar.checkbox('Show Type Leaders', key=44)):
    find_leaders('Type', week, df4, 45, 46)

# st.subheader('Show Information')
# st.dataframe(df1)

# st.subheader('TV Shows - TV TRP')
# st.markdown('#### TRP')
# st.dataframe(df2.style.format("{:.2f}"))
# st.markdown('#### Rank')
# st.dataframe(df3)