import streamlit as st
import plotly.graph_objects as go

# Part 1 - Week - TRP
def week_function(trp):
    weeks = trp.columns.unique()
    week = st.sidebar.selectbox('Choose week', weeks, key=2, index=len(weeks)-1)

    st.markdown('### ' + week)

    st.markdown('#### TRP')
    df1 = trp[week].sort_values(ascending=False)    
    
    fig = go.Figure()
    fig.add_trace(go.Scatter(x=df1.index, y=df1, mode='lines+markers',fill='tonexty'))
    fig.update_layout(
        autosize=False,
        width=750,
        height=350,
        margin=dict(
            l=0,
            r=0,
            b=4,
            t=20,
            pad=0
        )
    )
    st.plotly_chart(fig)

    ch = st.sidebar.checkbox('Show Data')
    if ch:
        st.dataframe(df1.to_frame().style.format({week:"{:.2f}"}), width=800, height=450)
