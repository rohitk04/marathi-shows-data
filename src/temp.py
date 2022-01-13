import streamlit as st
import pandas as pd
import plotly.graph_objects as go

from input import read_csv
from temp_function import calculate_max

df1 = read_csv('data/csv/shows/info.csv', 'Show')
df2 = read_csv('data/csv/shows/tv/tv_trp_trp.csv', 'Show')
df3 = read_csv('data/csv/shows/tv/tv_trp_rank.csv', 'Show')
df4 = pd.merge(pd.merge(df1, df2, how="inner",left_index=True, right_index=True), df3, how="inner",left_index=True, right_index=True, suffixes=['_trp','_rank'])

weeks = list(df2.columns.unique())
week = st.sidebar.selectbox('Choose week', weeks, index=len(weeks)-1)

if (st.sidebar.checkbox('Show Channel Leaders', value=True, key=34)):
    calculate_max('Channel',week, df4, 35)
if (st.sidebar.checkbox('Show Timeslot Leaders', key=36)):
    calculate_max('Time',week, df4, 37, 38)
if (st.sidebar.checkbox('Show Type Leaders', key=49)):
    calculate_max('Type', week, df4, 40, 41)

# st.subheader('Show Information')
# st.dataframe(df1)

# st.subheader('TV Shows - TV TRP')
# st.markdown('#### TRP')
# st.dataframe(df2.style.format("{:.2f}"))
# st.markdown('#### Rank')
# st.dataframe(df3)