from ast import literal_eval
import streamlit as st
import plotly.graph_objects as go

from input import read_csv

def info_explode(info):
    df = info.reset_index()
    df.index += 1
    df['Time'] = df['Time'].apply(literal_eval)
    df = df.explode('Time')
    return df

def display_data(info):
    st.title("BARC Data (Raw Data)")

    ch1 = st.sidebar.checkbox("Display Show Information", value=True, key=2)
    ch2 = st.sidebar.checkbox("Display Channel - GRP & Rank Data", key=3)
    ch3 = st.sidebar.checkbox("Display TV Show - TV TRP & Rank Data", key=4)
    ch4 = st.sidebar.checkbox("Display TV Show - Online TRP & Rank Data", key=5)

    if ch1:
        st.subheader('Show Information')

        df = info_explode(info)
        st.dataframe(df, width=800, height=450)
        st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)

    if ch2:
        st.subheader('Channels')
        st.markdown('#### GRP')
        st.dataframe(read_csv('data/csv/channels/channels_grp.csv', 'Channel').style.format("{:.2f}"), width=800, height=450)
        st.markdown('#### Rank')
        st.dataframe(read_csv('data/csv/channels/channels_rank.csv', 'Channel'), width=800, height=450)
        st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)   
    
    if ch3:
        st.subheader('TV Shows - TV TRP')
        st.markdown('#### TRP')
        st.dataframe(read_csv('data/csv/shows/tv/tv_trp_trp.csv', 'Show').style.format("{:.2f}"), width=800, height=450)
        st.markdown('#### Rank')
        st.dataframe(read_csv('data/csv/shows/tv/tv_trp_rank.csv', 'Show'), width=800, height=450)
        st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)

    if ch4:
        st.subheader('TV Shows - Online TRP')
        st.markdown('#### TRP')
        st.dataframe(read_csv('data/csv/shows/online/online_trp_trp.csv','Show').style.format("{:.2f}"), width=800, height=450)    
        st.markdown('#### Rank')
        st.dataframe(read_csv('data/csv/shows/online/online_trp_rank.csv', 'Show'), width=800, height=450)
        st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)

def plot_figure(data, choices, ch, y_axis_title, reversed, style=False):
    modified_data = data.loc[data.index.isin(choices)].T
    if (modified_data.empty):
        st.markdown ("##### "+y_axis_title+" - Data not available")
        return

    dic=dict(
            showgrid=False,
            ticks="outside",
            tickwidth=2,
            tickcolor='crimson',
            ticklen=10,
            showline=True, 
            linewidth=2, 
            linecolor='black',
            mirror=True,
            showspikes=True,
            spikethickness=2,
            spikedash='dash'
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
            st.dataframe(modified_data.T.style.format("{:.2f}"), width=800, height=450)
        else:
            st.dataframe(modified_data.T, width=800, height=450)

def comparison_function(trp, rank, choices, checkbox_msg, k1, grp=False):
    ch = st.sidebar.checkbox(checkbox_msg, key=k1)

    ttl = 'TRP'
    if grp:
        ttl = ttl.replace('T','G')

    plot_figure(trp, choices, ch, ttl, True, True)
    plot_figure(rank, choices, ch, 'Rank', 'reversed')

def trp_function(trp, week, ch, grp, middle = '', leader = False):    
    if (middle != ''):
        middle = ' - ' + middle

    ttl = 'TRP'
    if grp:
        ttl = ttl.replace('T','G')

    if leader:
        df = trp
        y = trp['TRP']
    else:
        df = trp[week].sort_values(ascending=False)
        y = df

    dic=dict(
        ticks="outside",
        tickwidth=2,
        tickcolor='crimson',
        ticklen=10,
        showline=True, 
        linewidth=2, 
        linecolor='black',
        mirror=True,
        showgrid=False,
        showspikes=True,
        spikethickness=2,
        spikecolor='crimson',
        spikedash='dash'
        )    
    
    fig = go.Figure()
    fig.add_trace(go.Scatter(
        x=df.index, 
        y=y, 
        mode='lines+markers',
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
            title='Show',
            tickangle=45
        ),
        yaxis=dict(
            dic,
            title=ttl
        ),
        title=week + middle + ' - ' + ttl
    )
    st.plotly_chart(fig)

    if ch:
        if leader:
            st.dataframe(df.style.format({'TRP':"{:.2f}"}), width=800, height=450)
        else:
            st.dataframe(df.to_frame().style.format({week:"{:.2f}"}), width=800, height=450)

def rank_function(rank, week, ch, middle=''):
    if (middle != ''):
        middle = ' - ' + middle

    df = rank[[week]].sort_values(by=week, ascending=True)

    m = max(df['Week 1'])
    df['New Rank'] = m - df['Week 1'] + 10

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
            y=df['New Rank'],
            text=df[week],
            textposition='inside',
            textangle = 0,
            marker_color= '#b20001',
            insidetextfont = dict(
                size=20,
                family='Arial'),
            insidetextanchor='middle',
            hovertemplate='<b>Show: </b> %{x}<br><b>Rank: </b> %{text}',
            hoverlabel = dict(
                bgcolor = '#e0c46a',
                align = 'auto',
                font = dict(
                    size=14,
                    family='Arial'
                )
            ),
            name = week
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
        uniformtext_minsize=8, 
        uniformtext_mode='hide',
        xaxis = dict(
            dic,
            title='Show',
            tickangle = 45
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
        st.dataframe(df.drop(columns=['New Rank']), width=800, height=450)

def week_function(trp, rank, k1, k2, grp=False):
    weeks = trp.columns.unique()
    week = st.sidebar.selectbox('Choose week', weeks, index=len(weeks)-1, key=k1)
    ch = st.sidebar.checkbox('Show Data', key=k2)
    
    st.markdown('### Week-wise Performance')

    trp_function(trp, week, ch, grp)
    rank_function(rank, week, ch)
    
    return week

def channel_function(week, info, trp, rank):
    channels = list(info['Channel'].sort_values().unique())
    channel = st.sidebar.selectbox('Choose channel', channels, key=15)
    ch = st.sidebar.checkbox('Show Data', key=16)

    st.markdown('### Channel: ' + channel)

    df = trp[trp.index.isin(list(info[info['Channel'] == channel].index))]
    trp_function(df, week, ch, False, channel)

    df = rank[rank.index.isin(list(info[info['Channel'] == channel].index))]
    rank_function(df, week, ch, channel)

def timeslot_function(week, info, trp, rank):
    e_info = info_explode(info)

    timeslots = list(e_info['Time'].dropna().sort_values().unique())
    timeslot = st.sidebar.selectbox('Choose timeslot', timeslots, key=18)
    ch = st.sidebar.checkbox('Show Data', key=19)

    st.markdown('### Timeslot: ' + timeslot)

    df = trp[trp.index.isin(list(e_info[e_info['Time'] == timeslot]['Show']))]
    trp_function(df, week, ch, False, timeslot)

    df = rank[rank.index.isin(list(e_info[e_info['Time'] == timeslot]['Show']))]
    rank_function(df, week, ch, timeslot)

def performance_comparison(info, tv_trp, tv_rank, online_trp, online_rank, column, text, k1, k2, k3):
    st.markdown('### '+ text.capitalize() + 'wise Performance Comparison')

    e_info = info_explode(info)

    choices = list(e_info[column].sort_values().unique())
    selection = st.sidebar.selectbox('Choose ' + text, choices, key=k1)

    st.markdown('### ' + selection)

    shows = list(e_info.loc[e_info[column]==selection]['Show'])
    
    st.markdown('### TV TRP')
    comparison_function(tv_trp, tv_rank, shows, "Show TV Show - TV TRP & Rank Data",k2)
    st.markdown("""<hr style="border:dashed 2px #333" /> """, unsafe_allow_html=True)

    st.markdown('### Online TRP')
    comparison_function(online_trp, online_rank, shows, "Show TV Show - Online TRP & Rank Data",k3)

    st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)

def calculate_channel_count(df, k1):
    occurences = df['Channel'].value_counts().rename('Count')

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
            x = occurences.index,
            y = occurences,
            marker_color= '#b20001',
            text = occurences,
            textposition='auto',
            insidetextfont = dict(
                size=20,
                family='Arial'),
            insidetextanchor='middle'
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
            title='Channel'
        ),
        yaxis = dict(
            dic,
            showticklabels=False, 
            ticklen=2
        ),
        title='Channel Count')
    st.plotly_chart(fig)

    if (st.sidebar.checkbox('Show Channel Count Data', key=k1)):
        st.dataframe(occurences, width=800, height=450)

def find_leaders(column, week, df, k1, k2=None):
    e_info = info_explode(df)
    
    if column == 'Time':
        title = 'Timeslot'
        sort_column = column
    else:
        title = column
        sort_column = 'Rank'

    st.subheader(title + " Leaders")
    
    column_list = ['Show', 'Channel',week+'_trp',week+'_rank']
    if column!='Channel':
        column_list.insert(1, column)

    df2 = e_info[e_info.groupby(column)[week+'_trp'].transform(max) == e_info[week+'_trp']]
    df2 = df2[column_list].drop_duplicates(keep='first',inplace=False).rename(columns={week+'_trp':'TRP', week+'_rank':'Rank'},inplace=False).sort_values(by=sort_column)

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
            x = df2[column],
            y = df2['TRP'],
            hoverinfo= 'text',
            marker_color= '#b20001',
            text = df2['Show'].astype('str') + ' (' + df2['TRP'].astype('str') + ')',
            textposition='inside',
            textangle = 0,
            insidetextfont = dict(
                size=18,
                family='Arial'),
            insidetextanchor='middle'
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
        uniformtext_minsize=12, 
        uniformtext_mode='hide',
        xaxis = dict(
            dic,
            title=title
        ),
        yaxis = dict(
            dic,
            ticklen=2,
            title = 'TRP'
        ),
        title=week)
    st.plotly_chart(fig)

    if (st.sidebar.checkbox('Show Data', key=k1)):
        st.dataframe(df2.set_index('Show').style.format({'TRP':"{:.2f}"}), width=800, height=450)

    if column!='Channel':
        calculate_channel_count(df2, k2)

def find_top_shows(week, df):
    num = int(st.sidebar.number_input('Choose Top _',min_value=2, max_value=len(df), value=5, key=36))

    middle = 'Top '+ str(num)+' shows'
    st.subheader(middle)
    
    column_list = ['Channel',week+'_trp',week+'_rank']
    df2 = df[column_list].rename(columns={week+'_trp':'TRP', week+'_rank':'Rank'},inplace=False).sort_values(by='TRP',ascending=False)
    df3 = df2.reset_index().head(num).set_index('Show')

    ch = st.sidebar.checkbox('Show Data', key=37)
    trp_function(df3, week, ch, False, middle, True)
    calculate_channel_count(df3, 38)