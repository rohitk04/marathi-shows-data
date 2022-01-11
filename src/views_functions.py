import streamlit as st
import plotly.graph_objects as go

# Part 1 - Week - TRP
def trp_function(trp, week, ch):    
    st.markdown('#### TRP')
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
            t=20,
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
        )
    )
    st.plotly_chart(fig)

    if ch:
        st.dataframe(df.to_frame().style.format({week:"{:.2f}"}), width=800, height=450)

def rank_function(rank, week, ch):
    st.markdown('#### Rank')
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
            t=20,
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
            )
    )
    st.plotly_chart(fig)

    if ch:
        st.dataframe(df, width=800, height=450)