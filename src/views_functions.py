from ast import literal_eval
import streamlit as st
import plotly.graph_objects as go
import pandas as pd
from input import read_csv
from data.paths.paths import paths

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
    ch4 = st.sidebar.checkbox("Display Mahaepisode - Data", key=47)
    ch5 = st.sidebar.checkbox("Display 2 Hour Special Episode - Data", key=73)
    ch6 = st.sidebar.checkbox("Display TV Show - Online TRP & Rank Data", key=5)

    if ch1:
        st.subheader('Show Information')

        df = info_explode(info)
        st.dataframe(df, width=800, height=450)
        st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)

    if ch2:
        st.subheader('Channels')
        st.markdown('#### GRP')
        st.dataframe(read_csv(paths[5]['grp_csv'], 'Channel').style.format("{:.2f}"), width=800, height=450)
        st.markdown('#### Rank')
        st.dataframe(read_csv(paths[5]['rank_csv'], 'Channel').style.format("{:.0f}"), width=800, height=450)
        st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)   
    
    if ch3:
        st.subheader('TV Shows - TV TRP')
        st.markdown('#### TRP')
        st.dataframe(read_csv(paths[1]["trp_csv"], 'Show').style.format("{:.2f}"), width=800, height=450)
        st.markdown('#### Rank')
        st.dataframe(read_csv(paths[1]["rank_csv"], 'Show').style.format("{:.0f}"), width=800, height=450)
        st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)

    if ch4:
        trp = read_csv(paths[2]['trp_csv'], 'Show')
        rank = read_csv(paths[2]['rank_csv'], 'Show')
        
        st.subheader('Mahaepisode')
        st.markdown('#### TRP')
        st.dataframe(trp.style.format("{:.2f}"), width=800, height=450)
        st.markdown('#### Rank')
        st.dataframe(rank.style.format("{:.0f}"), width=800, height=450)
        st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)

    if ch5:
        trp = read_csv(paths[3]['trp_csv'], 'Show')
        rank = read_csv(paths[3]['rank_csv'], 'Show')
        
        st.subheader('2 Hours Special Episode')
        st.markdown('#### TRP')
        st.dataframe(trp.style.format("{:.2f}"), width=800, height=450)
        st.markdown('#### Rank')
        st.dataframe(rank.style.format("{:.0f}"), width=800, height=450)
        st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)

    if ch6:
        st.subheader('TV Shows - Online TRP')
        st.markdown('#### TRP')
        st.dataframe(read_csv(paths[4]['trp_csv'],'Show').style.format("{:.2f}"), width=800, height=450)    
        st.markdown('#### Rank')
        st.dataframe(read_csv(paths[4]['rank_csv'], 'Show').style.format("{:.0f}"), width=800, height=450)
        st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)

def plot_figure(data, choices, ch, y_axis_title, reversed, style):
    modified_data = data.loc[data.index.isin(choices)].T
    if (modified_data.empty):
        st.markdown ("##### "+y_axis_title+" - Data not available")
        return

    first_idx = modified_data.first_valid_index()
    last_idx = modified_data.last_valid_index()
    modified_data = modified_data.loc[first_idx:last_idx]
    
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
                name = col,
                connectgaps=True,
                hovertemplate= None
            )
        )
    fig.update_layout(
        autosize=False,
        showlegend = False,
        width=800,
        height=650,
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
        hovermode='x unified'
    )   
    st.plotly_chart(fig)

    if ch:
        st.dataframe(modified_data.T.style.format(style), width=800, height=450)

def comparison_function(trp, rank, choices, checkbox_msg, k1, grp=False):
    ch = st.sidebar.checkbox(checkbox_msg, key=k1)

    ttl = 'TRP'
    if grp:
        ttl = ttl.replace('T','G')

    plot_figure(trp, choices, ch, ttl, True, "{:.2f}")
    plot_figure(rank, choices, ch, 'Rank', 'reversed',"{:.0f}")

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
        df = trp[week].sort_values(ascending=False).dropna()
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
            tickangle=55
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
            st.dataframe(df.style.format({'TRP':"{:.2f}",'Rank':'{:.0f}'}), width=800, height=450)
        else:
            st.dataframe(df.to_frame().style.format({week:"{:.2f}"}), width=800, height=450)

def rank_function(rank, week, ch, middle=''):
    if (middle != ''):
        middle = ' - ' + middle

    df = rank[[week]].sort_values(by=week, ascending=True).dropna()
    m = max(df[week])
    df['New Rank'] = m - df[week] + 10

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
            hovertemplate='<b>Show: </b> %{x}<br><b>Rank: </b> %{text}<extra></extra>',
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
            tickangle = 55
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
        st.dataframe(df.drop(columns=['New Rank']).style.format({week:"{:.0f}"}), width=800, height=450)

def week_function(trp, rank, k1, k2, grp=False):
    weeks = list(trp.columns.unique())
    weeks_int = [int(s) for x in weeks for s in x.split() if s.isdigit()]
    weeks = [x for _,x in sorted(zip(weeks_int, weeks))]

    week = st.sidebar.selectbox('Choose week', weeks, index=len(weeks)-1, key=k1)
    ch = st.sidebar.checkbox('Show Data', key=k2)
    
    st.markdown('### Week-wise Performance')

    trp_function(trp, week, ch, grp)
    rank_function(rank, week, ch)
    return week

def channel_function(week, info, trp, rank, k1, k2):
    merged = pd.merge(pd.merge(info, trp[week], how="inner",left_index=True, right_index=True), rank[week], how="inner",left_index=True, right_index=True, suffixes=['_trp','_rank']).dropna()
    
    channels = list(merged['Channel'].sort_values().unique())
    channel = st.sidebar.selectbox('Choose channel', channels, key=k1)
    ch = st.sidebar.checkbox('Show Data', key=k2)

    st.markdown('### Channel: ' + channel)

    df = trp[trp.index.isin(list(info[info['Channel'] == channel].index))]
    trp_function(df, week, ch, False, channel)

    df = rank[rank.index.isin(list(info[info['Channel'] == channel].index))]
    rank_function(df, week, ch, channel)

def timeslot_function(week, trp, rank, info, k1, k2, explode=False):
    if explode:
        merged = pd.merge(pd.merge(info, trp[week], how="inner",left_index=True, right_index=True), rank[week], how="inner",left_index=True, right_index=True, suffixes=['_trp','_rank']).dropna()
        e_info = info_explode(merged)

        timeslots = list(e_info['Time'].dropna().sort_values().unique())
        timeslot = st.sidebar.selectbox('Choose timeslot', timeslots, key=k1)
        ch = st.sidebar.checkbox('Show Data', key=k2)

        st.markdown('### Timeslot: ' + timeslot)

        df = trp[trp.index.isin(list(e_info[e_info['Time'] == timeslot]['Show']))]
        trp_function(df, week, ch, False, timeslot)

        df = rank[rank.index.isin(list(e_info[e_info['Time'] == timeslot]['Show']))]
        rank_function(df, week, ch, timeslot)
    else:
        #Info => time_df
        trp_merged = pd.merge(trp[week], info[week], how="inner", left_index=True, right_index=True, suffixes=['_trp','_time']).rename(columns={week+'_trp':week, week+'_time':'Time'},inplace=False)
        rank_merged = pd.merge(rank[week], info[week], how="inner", left_index=True, right_index=True, suffixes=['_rank','_time']).rename(columns={week+'_rank':week, week+'_time':'Time'},inplace=False)
        
        timeslots = list(trp_merged['Time'].dropna().sort_values().unique())
        timeslot = st.sidebar.selectbox('Choose timeslot', timeslots, key=54)
        ch = st.sidebar.checkbox('Show Data', key=55)

        st.markdown('### Timeslot: ' + timeslot)

        df = trp_merged[trp_merged['Time'] == timeslot]
        trp_function(df, week, ch, False, timeslot)
        
        df = rank_merged[rank_merged['Time'] == timeslot]
        rank_function(df, week, ch, timeslot)

def type_function(week, info, trp, rank, k1, k2):
    merged = pd.merge(pd.merge(info, trp[week], how="inner",left_index=True, right_index=True), rank[week], how="inner",left_index=True, right_index=True, suffixes=['_trp','_rank']).dropna()
    
    types = list(merged['Type'].sort_values().unique())
    var_type = st.sidebar.selectbox('Choose type', types, key=k1)
    ch = st.sidebar.checkbox('Show Data', key=k2)

    st.markdown('### Type: ' + var_type)

    df = trp[trp.index.isin(list(info[info['Type'] == var_type].index))]
    trp_function(df, week, ch, False, var_type)

    df = rank[rank.index.isin(list(info[info['Type'] == var_type].index))]
    rank_function(df, week, ch, var_type)

def performance_comparison(info, tv_trp, tv_rank, online_trp, online_rank, column, text, k1, k2, k3):
    st.markdown('### '+ text.capitalize() + 'wise Performance Comparison')

    e_info = info_explode(info)

    choices = list(e_info[column].sort_values().dropna().unique())
    selection = st.sidebar.selectbox('Choose ' + text, choices, key=k1)

    st.markdown('### ' + selection)

    shows = list(e_info.loc[e_info[column]==selection]['Show'])
    
    st.markdown('### TV TRP')
    comparison_function(tv_trp, tv_rank, shows, "Show TV Show - TV TRP & Rank Data",k2)
    st.markdown("""<hr style="border:dashed 2px #333" /> """, unsafe_allow_html=True)

    st.markdown('### Online TRP')
    comparison_function(online_trp, online_rank, shows, "Show TV Show - Online TRP & Rank Data",k3)

    st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)

def calculate_channel_count(df, k1, column):
    occurences = df[column].value_counts().rename('Count')

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
            textposition='inside',
            textangle = 0,
            hovertemplate='<b>Channel: </b> %{x}<br><b>Count: </b> %{text}<extra></extra>',
            insidetextfont = dict(
                size=20,
                family='Arial'),
            insidetextanchor='middle',
            hoverlabel = dict(
                bgcolor = '#e0c46a',
                align = 'auto',
                font = dict(
                    size=14,
                    family='Arial'
                )
            ),
            name = 'Channel Count'
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
            title=column
        ),
        yaxis = dict(
            dic,
            showticklabels=False, 
            ticklen=2
        ),
        title=column + ' Count')
    st.plotly_chart(fig)

    if (st.sidebar.checkbox('Show ' + column + ' Count Data', key=k1)):
        st.dataframe(occurences, width=800, height=450)

def find_leaders(column, week, info, trp, rank, k1, k2=None):
    df = pd.merge(pd.merge(info, trp, how="inner",left_index=True, right_index=True), rank, how="inner",left_index=True, right_index=True, suffixes=['_trp','_rank']).dropna()

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
            title=title,
            ticks="outside",
            tickwidth=2,
            tickcolor='crimson',
            ticklen=10,
        ),
        yaxis = dict(
            dic,
            title = 'TRP',
            showticklabels=False, 
            ticklen=2
        ),
        title=week)
    st.plotly_chart(fig)

    if (st.sidebar.checkbox('Show Data', key=k1)):
        st.dataframe(df2.set_index('Show').style.format({'TRP':"{:.2f}", 'Rank':"{:.0f}"}), width=800, height=450)

    if column!='Channel':
        calculate_channel_count(df2, k2, 'Channel')

def find_special_episode_leaders(column, week, time_df, trp, rank, info, k1, k2=None):
    df = pd.merge(pd.merge(time_df, trp, how="inner",left_index=True, right_index=True), rank, how="inner",left_index=True, right_index=True, suffixes=['_trp','_rank'])
    df.columns = ['Time',week+'_trp',week+'_rank']
    df = pd.merge(df, info[['Channel','Type','Platform']], how="inner",left_index=True, right_index=True, suffixes=['_trp','_rank']).reset_index()

    if column == 'Time':
        title = 'Timeslot'
        sort_column = column
    else:
        title = column
        sort_column = 'Rank'

    st.subheader(title + " Leaders")
    st.markdown(':point_right: *To view ranks, click on \'Show Data\'*')
    
    column_list = ['Show', 'Channel',week+'_trp',week+'_rank']
    if column!='Channel':
        column_list.insert(1, column)
    
    df2 = df[df.groupby(column)[week+'_trp'].transform(max) == df[week+'_trp']]
    df2 = df2[column_list].drop_duplicates(keep='first',inplace=False).rename(columns={week+'_trp':'TRP', week+'_rank':'Rank'},inplace=False).sort_values(by=sort_column)

    dic=dict(
        showgrid=False,
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
            title=title,
            ticks="outside",
            tickwidth=2,
            tickcolor='crimson',
            ticklen=10,
        ),
        yaxis = dict(
            dic,
            title = 'TRP',
            showticklabels=False, 
            ticklen=2
        ),
        title=week)
    st.plotly_chart(fig)

    if (st.sidebar.checkbox('Show Data', key=k1)):
        st.dataframe(df2.set_index('Show').style.format({'TRP':"{:.2f}", 'Rank':"{:.0f}"}), width=800, height=450)

    if column!='Channel':
        calculate_channel_count(df2, k2, 'Channel')

def find_top_shows(week, info, trp, rank):
    df = pd.merge(pd.merge(info, trp, how="inner",left_index=True, right_index=True), rank, how="inner",left_index=True, right_index=True, suffixes=['_trp','_rank']).dropna()

    num = int(st.sidebar.number_input('Choose Top _',min_value=2, max_value=len(df), value=5, key=36))

    middle = 'Top '+ str(num)+' shows'
    st.subheader(middle)
    
    column_list = ['Channel',week+'_trp',week+'_rank']
    df2 = df[column_list].rename(columns={week+'_trp':'TRP', week+'_rank':'Rank'},inplace=False).sort_values(by='TRP',ascending=False)
    df2 = df2[df2['Rank'] <= num].reset_index().set_index('Show')
    
    ch = st.sidebar.checkbox('Show Data', key=37)
    trp_function(df2, week, ch, False, middle, True)
    calculate_channel_count(df2, 38, 'Channel')

def merge(week, time_df, trp, rank, info):
    merged = pd.merge(time_df[week], trp[week], how="inner",left_index=True, right_index=True)
    merged = pd.merge(merged, rank[week], how="inner",left_index=True, right_index=True, suffixes=['_trp','_rank'])
    merged.columns = ['Time',week+'_trp',week+'_rank']
    merged = pd.merge(merged, info[['Channel','Type','Platform']], how="inner",left_index=True, right_index=True, suffixes=['_trp','_rank'])
    merged = merged.reset_index()
    return merged