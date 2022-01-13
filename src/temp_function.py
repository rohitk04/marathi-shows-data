import streamlit as st
import pandas as pd
import plotly.graph_objects as go

def calculate_max(column, week, df, k1, k2=None):
    if column == 'Time':
        title = 'Timeslot'
    else:
        title = column

    st.subheader(title + " Leaders")
    
    column_list = ['Channel',week+'_trp',week+'_rank']

    if column!='Channel':
        column_list.insert(0, column)

    df2 = df[df.groupby(column)[week+'_trp'].transform(max) == df[week+'_trp']]
    df2 = df2[column_list].rename_axis(index='Show').reset_index().sort_values([column]).rename(columns={week+'_trp':'TRP', week+'_rank':'Rank'},inplace=False)
    
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
        st.dataframe(df2.set_index('Show'))

    if column!='Channel':
        occurences = df2['Channel'].value_counts().rename('Count')

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

        if (st.sidebar.checkbox('Show Channel Count Data', key=k2)):
            st.dataframe(occurences)
