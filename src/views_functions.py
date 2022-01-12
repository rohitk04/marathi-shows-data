import streamlit as st
import pandas as pd
import plotly.graph_objects as go

from input import read_csv

def trp_function(trp, week, ch, middle = ''):    
    if (middle != ''):
        middle = ' - ' + middle
    
    df = trp[week].sort_values(ascending=False)

    dic=dict(
        ticks="outside",
        tickwidth=2,
        tickcolor='crimson',
        ticklen=10,
        showline=True, 
        linewidth=2, 
        linecolor='black',
        mirror=True,
        gridwidth=2, 
        gridcolor='Crimson'
        )    
    
    fig = go.Figure()
    fig.add_trace(go.Scatter(
        x=df.index, 
        y=df, 
        mode='lines+markers',
        fill='tozeroy',
        marker_color='#b20001'))
    fig.update_layout(
        autosize=False,
        width=750,
        height=400,
        margin=dict(
            l=1,
            r=1,
            b=4,
            t=25,
            pad=0
        ),
        xaxis=dict(
            dic,
            title='Show'
        ),
        yaxis=dict(
            dic, 
            showgrid=False,
            title='TRP'
        ),
        title=week + middle + ' - TRP'
    )
    st.plotly_chart(fig)

    if ch:
        st.dataframe(df.to_frame().style.format({week:"{:.2f}"}), width=800, height=450)

def rank_function(rank, week, ch, middle=''):
    if (middle != ''):
        middle = ' - ' + middle

    df = rank[week].sort_values(ascending=True)

    dic=dict(
            showgrid=False,
            ticks="outside",
            tickwidth=2,
            tickcolor='crimson',
            ticklen=10,
            showline=True, 
            linewidth=2, 
            linecolor='black',
            mirror=True
            )
    
    fig = go.Figure()
    fig.add_trace(
        go.Bar(
            x=df.index, 
            y=df,
            text=df,
            textposition='auto',
            marker_color= '#b20001',
            insidetextfont = dict(
                size=20,
                family='Arial'),
            insidetextanchor='middle',))
    fig.update_layout(
        autosize=False,
        width=750,
        height=400,
        margin=dict(
            l=0,
            r=0,
            b=4,
            t=25,
            pad=0
        ),
        xaxis = dict(
            dic,
            title='Show'
        ),
        yaxis = dict(
            dic,
            showticklabels=False, 
            ticklen=2
        ),
        title=week + middle + ' - Rank'
    )
    st.plotly_chart(fig)

    if ch:
        st.dataframe(df, width=800, height=450)

def week_function(trp, rank, week, ch):
    st.markdown('### ' + week)

    trp_function(trp, week, ch)
    rank_function(rank, week, ch)

def channel_function(week, info, trp, rank):
    channels = list(info['Channel'].unique())
    channel = st.sidebar.selectbox('Choose channel', channels, key=6)
    ch = st.sidebar.checkbox('Show Data', key=7)

    st.markdown('### Channel: ' + channel)

    df = trp[trp.index.isin(list(info[info['Channel'] == channel].index))]
    trp_function(df, week, ch, channel)

    df = rank[rank.index.isin(list(info[info['Channel'] == channel].index))]
    rank_function(df, week, ch, channel)

def timeslot_function(week, info, trp, rank):
    timeslots = list(info['Time'].unique())
    timeslot = st.sidebar.selectbox('Choose timeslot', timeslots, key=8)
    ch = st.sidebar.checkbox('Show Data', key=9)

    st.markdown('### Timeslot: ' + timeslot)

    df = trp[trp.index.isin(list(info[info['Time'] == timeslot].index))]
    trp_function(df, week, ch, timeslot)

    df = rank[rank.index.isin(list(info[info['Time'] == timeslot].index))]
    rank_function(df, week, ch, timeslot)

def display_data(info):
    st.title("BARC Data (Raw Data)")

    st.subheader('Show Information')
    st.dataframe(info)
    st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)

    st.subheader('Channels')
    st.markdown('#### GRP')
    st.dataframe(read_csv('data/csv/channels/channels_grp.csv', 'Channel', True))
    st.markdown('#### Rank')
    st.dataframe(read_csv('data/csv/channels/channels_rank.csv', 'Channel'))
    st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)   
    
    st.subheader('TV Shows')
    st.subheader('TV TRP')
    st.markdown('#### TRP')
    st.dataframe(read_csv('data/csv/shows/tv/tv_trp_trp.csv', 'Show',True))
    st.markdown('#### Rank')
    st.dataframe(read_csv('data/csv/shows/tv/tv_trp_rank.csv', 'Show'))
    st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)

    st.subheader('Online TRP')
    st.markdown('#### TRP')
    st.dataframe(read_csv('data/csv/shows/online/online_trp_trp.csv','Show', True))    
    st.markdown('#### Rank')
    st.dataframe(read_csv('data/csv/shows/online/online_trp_rank.csv', 'Show'))
    st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)