import streamlit as st
import plotly.graph_objects as go

from input import read_csv

def display_data(info):
    st.title("BARC Data (Raw Data)")

    ch1 = st.sidebar.checkbox("Display Show Information", value=True, key=2)
    ch2 = st.sidebar.checkbox("Display Channel - GRP & Rank Data", key=3)
    ch3 = st.sidebar.checkbox("Display TV Show - TV TRP & Rank Data", key=4)
    ch4 = st.sidebar.checkbox("Display TV Show - Online TRP & Rank Data", key=5)

    if ch1:
        st.subheader('Show Information')
        st.dataframe(info)
        st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)

    if ch2:
        st.subheader('Channels')
        st.markdown('#### GRP')
        st.dataframe(read_csv('data/csv/channels/channels_grp.csv', 'Channel').style.format("{:.2f}"))
        st.markdown('#### Rank')
        st.dataframe(read_csv('data/csv/channels/channels_rank.csv', 'Channel'))
        st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)   
    
    if ch3:
        st.subheader('TV Shows - TV TRP')
        st.markdown('#### TRP')
        st.dataframe(read_csv('data/csv/shows/tv/tv_trp_trp.csv', 'Show').style.format("{:.2f}"))
        st.markdown('#### Rank')
        st.dataframe(read_csv('data/csv/shows/tv/tv_trp_rank.csv', 'Show'))
        st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)

    if ch4:
        st.subheader('TV Shows - Online TRP')
        st.markdown('#### TRP')
        st.dataframe(read_csv('data/csv/shows/online/online_trp_trp.csv','Show').style.format("{:.2f}"))    
        st.markdown('#### Rank')
        st.dataframe(read_csv('data/csv/shows/online/online_trp_rank.csv', 'Show'))
        st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)

def plot_figure(data, choices, ch, y_axis_title, reversed, style=False):
    modified_data = data.loc[data.index.isin(choices)].T

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
    for col in modified_data.columns:
        fig.add_trace(
            go.Scatter(
                x=modified_data.index, 
                y=modified_data[col], 
                mode='lines+markers',
                name=col
            )
        )
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
            title = "Week"
        ),
        yaxis = dict(
            dic,
            title = y_axis_title,
            autorange=reversed
        ),
        title = y_axis_title,
        legend=dict(
            orientation="h",
            xanchor="center",
            x=0.5,
            y=-0.2
        ),
        legend_title_text='Channel'
    )   
    st.plotly_chart(fig)

    if ch:
        if style:
            st.dataframe(modified_data.style.format("{:.2f}"))
        else:
            st.dataframe(modified_data)

def comparison_function(trp, rank, choices, checkbox_msg, k1, grp=False):
    ch = st.sidebar.checkbox(checkbox_msg, key=k1)

    ttl = 'TRP'
    if grp:
        ttl = ttl.replace('T','G')

    plot_figure(trp, choices, ch, ttl, True, True)
    plot_figure(rank, choices, ch, 'Rank', 'reversed')

def trp_function(trp, week, ch, grp, middle = ''):    
    if (middle != ''):
        middle = ' - ' + middle

    ttl = 'TRP'
    if grp:
        ttl = ttl.replace('T','G')

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
            title=ttl
        ),
        title=week + middle + ' - ' + ttl
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

def week_function(trp, rank, k1, k2, grp=False):
    weeks = trp.columns.unique()
    week = st.sidebar.selectbox('Choose week', weeks, index=len(weeks)-1, key=k1)
    ch = st.sidebar.checkbox('Show Data', key=k2)
    
    st.markdown('### Week-wise Performance')

    trp_function(trp, week, ch, grp)
    rank_function(rank, week, ch)
    
    return week

def channel_function(week, info, trp, rank):
    channels = list(info['Channel'].unique())
    channel = st.sidebar.selectbox('Choose channel', channels, key=15)
    ch = st.sidebar.checkbox('Show Data', key=16)

    st.markdown('### Channel: ' + channel)

    df = trp[trp.index.isin(list(info[info['Channel'] == channel].index))]
    trp_function(df, week, ch, False, channel)

    df = rank[rank.index.isin(list(info[info['Channel'] == channel].index))]
    rank_function(df, week, ch, channel)

def timeslot_function(week, info, trp, rank):
    timeslots = list(info['Time'].unique())
    timeslot = st.sidebar.selectbox('Choose timeslot', timeslots, key=18)
    ch = st.sidebar.checkbox('Show Data', key=19)

    st.markdown('### Timeslot: ' + timeslot)

    df = trp[trp.index.isin(list(info[info['Time'] == timeslot].index))]
    trp_function(df, week, ch, False, timeslot)

    df = rank[rank.index.isin(list(info[info['Time'] == timeslot].index))]
    rank_function(df, week, ch, timeslot)

def performance_comparison(info, tv_trp, tv_rank, online_trp, online_rank, column, text, k1, k2, k3):
    st.markdown('### '+ text.capitalize() + 'wise Performance Comparison')

    choices = list(info[column].unique())
    selection = st.sidebar.selectbox('Choose ' + text, choices, key=k1)

    st.markdown('### ' + selection)

    shows = list(info.loc[info[column]==selection].index)
    
    st.markdown('### TV TRP')
    comparison_function(tv_trp, tv_rank, shows, "Show TV Show - TV TRP & Rank Data",k2)
    st.markdown("""<hr style="border:dashed 2px #333" /> """, unsafe_allow_html=True)

    st.markdown('### Online TRP')
    comparison_function(online_trp, online_rank, shows, "Show TV Show - Online TRP & Rank Data",k3)

    st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)