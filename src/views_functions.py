import streamlit as st
import plotly.graph_objects as go

def trp_function(trp, week, ch, channel = ''):    
    if (channel != ''):
        channel = ' - ' + channel
    
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
        title=week + channel + ' - TRP'
    )
    st.plotly_chart(fig)

    if ch:
        st.dataframe(df.to_frame().style.format({week:"{:.2f}"}), width=800, height=450)

def rank_function(rank, week, ch, channel=''):
    if (channel != ''):
        channel = ' - ' + channel

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
        title=week + channel + ' - Rank'
    )
    st.plotly_chart(fig)

    if ch:
        st.dataframe(df, width=800, height=450)

def week_function(trp, rank):
    weeks = trp.columns.unique()
    week = st.sidebar.selectbox('Choose week', weeks, index=len(weeks)-1, key=2)
    ch = st.sidebar.checkbox('Show Data', key=3)

    st.markdown('### ' + week)

    trp_function(trp, week, ch)
    rank_function(rank, week, ch)

    return week

def channel_function(week, info, trp, rank):
    channels = list(info['Channel'].unique())
    channel = st.sidebar.selectbox('Choose channel', channels, key=4)
    ch = st.sidebar.checkbox('Show Data', key=5)

    st.markdown('### ' + channel)

    df = trp[trp.index.isin(list(info[info['Channel'] == channel].index))]
    trp_function(df, week, ch, channel)

    df = rank[rank.index.isin(list(info[info['Channel'] == channel].index))]
    rank_function(df, week, ch, channel)