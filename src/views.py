import sys
import streamlit as st
from streamlit import cli
import pandas as pd
from input import read_csv
from views_functions import *
from info.paths import paths

def main():
    info = read_csv(paths['info_csv'], 'Show')

    select = st.sidebar.selectbox('Choose', ['Shows - TV TRP', 'Mahaepisode', '2 Hours Special Episode', 'Shows - Online TRP', 'Channel', 'Leaders', 'Compare Shows'], key=1)

    if (select == 'Shows - TV TRP'):
        st.title('Shows - TV TRP')

        trp = read_csv(paths[1]["trp_csv"], 'Show')
        rank = read_csv(paths[1]["rank_csv"], 'Show')

        week = week_function(trp,rank, 12, 13)
        if (st.sidebar.checkbox("Show Channelwise Performance",key=14)):      
            channel_function(week, info, trp, rank, 15, 16)
        if (st.sidebar.checkbox("Show Timeslotwise Performance",key=17)):
            timeslot_function(week, trp, rank, info, 18, 19, True) 
        if (st.sidebar.checkbox("Show Typewise Performance",key=65)):
            type_function(week, info, trp, rank, 66, 67) 

    elif (select == 'Mahaepisode'):
        st.title('Mahaepisode')

        trp = read_csv(paths[2]['trp_csv'], 'Show')
        rank = read_csv(paths[2]['rank_csv'], 'Show')
        time_df = read_csv(paths[2]['time_csv'], 'Show')
        
        week = week_function(trp,rank, 48, 49)

        if (st.sidebar.checkbox("Show Channelwise Performance",key=50)):      
            channel_function(week, info, trp, rank, 51, 52)
        
        if (st.sidebar.checkbox("Show Timeslotwise Performance",key=53)):
            timeslot_function(week, trp, rank, time_df, 54, 55)
        
        if (st.sidebar.checkbox('Show Channel Leaders', key=56)):
            find_special_episode_leaders('Channel',week, time_df[week], trp[week], rank[week], info, 57)

        if (st.sidebar.checkbox('Show Timeslot Leaders', key=58)):
            find_special_episode_leaders('Time',week, time_df[week], trp[week], rank[week], info, 59, 60)

        if (st.sidebar.checkbox('Show Type Leaders', key=61)):
            find_special_episode_leaders('Type', week, time_df[week], trp[week], rank[week], info, 62, 63)

    elif (select == '2 Hours Special Episode'):
        st.title('2 Hours Special Episode')

        info = read_csv(paths[3]['info_csv'], 'Show')
        trp = read_csv(paths[3]['trp_csv'], 'Show')
        rank = read_csv(paths[3]['rank_csv'], 'Show')
        time_df = read_csv(paths[3]['time_csv'], 'Show')

        week = week_function(trp,rank, 74, 75)

        if (st.sidebar.checkbox("Show Channelwise Performance",key=76)):      
            channel_function(week, info, trp, rank, 77, 78)
        
        if (st.sidebar.checkbox("Show Timeslotwise Performance",key=79)):
            timeslot_function(week, trp, rank, time_df, 80, 81)
        
        if (st.sidebar.checkbox('Show Channel Leaders', key=82)):
            find_special_episode_leaders('Channel',week, time_df[week], trp[week], rank[week], info, 83)

        if (st.sidebar.checkbox('Show Timeslot Leaders', key=84)):
            find_special_episode_leaders('Time',week, time_df[week], trp[week], rank[week], info, 85, 86)

        if (st.sidebar.checkbox('Show Type Leaders', key=87)):
            find_special_episode_leaders('Type', week, time_df[week], trp[week], rank[week], info, 88, 89)
        
    elif (select == 'Shows - Online TRP'):
        st.title('Shows - Online TRP')

        trp = read_csv(paths[4]['trp_csv'], 'Show')
        rank = read_csv(paths[4]['rank_csv'], 'Show')

        week = week_function(trp, rank,20,21)

        merged = pd.merge(info['Platform'], trp[week], how="inner",left_index=True, right_index=True).dropna()
        calculate_channel_count(merged, 64, 'Platform')

    elif (select == 'Channel'):
        st.title('Channel')

        trp = read_csv(paths[5]['grp_csv'], 'Channel')
        rank = read_csv(paths[5]['rank_csv'], 'Channel')

        if (st.sidebar.checkbox("Show Weekwise Performance",value=True,key=6)):
            week = week_function(trp, rank, 7,8, True)
        
        if (st.sidebar.checkbox("Show comparison of channels",key=9)):
            st.markdown('### Comparison')

            channels = list(trp.index.unique())
            choices = st.sidebar.multiselect('Compare channels',channels, default=channels[0], key=10)

            if (len(choices)!=0):
                comparison_function(trp, rank, choices, 'Show Data', 11, True)
            else:
                st.markdown("##### Please select channels")

    elif (select == 'Leaders'):
        st.title('Leaders')
        st.markdown(':point_right: *To view ranks, click on \'Show Data\'*')
        
        trp = read_csv(paths[1]["trp_csv"], 'Show')
        rank = read_csv(paths[1]["rank_csv"], 'Show')
        
        weeks = list(trp.columns.unique())
        week = st.sidebar.selectbox('Choose week', weeks, index=len(weeks)-1, key=34)

        if (st.sidebar.checkbox('Show Top Shows', value=True, key=35)):
            find_top_shows(week, info, trp[week], rank[week])

        if (st.sidebar.checkbox('Show Channel Leaders', key=39)):
            find_leaders('Channel',week, info, trp[week], rank[week], 40)

        if (st.sidebar.checkbox('Show Timeslot Leaders', key=41)):
            find_leaders('Time',week, info, trp[week], rank[week], 42, 43)

        if (st.sidebar.checkbox('Show Type Leaders', key=44)):
            find_leaders('Type', week, info, trp[week], rank[week], 45, 46)

    elif (select == 'Compare Shows'):
        st.title("Shows Comparison")

        tv_trp = read_csv(paths[1]["trp_csv"], 'Show')
        tv_rank = read_csv(paths[1]["rank_csv"], 'Show')
        online_trp = read_csv(paths[4]['trp_csv'], 'Show')
        online_rank = read_csv(paths[4]['rank_csv'], 'Show')

        if (st.sidebar.checkbox("Show show-wise Performance Comparison",value=True, key=22)):
            st.markdown('### Show-wise Performance Comparison')

            shows = list(info.index.unique())
            choices = st.sidebar.multiselect('Compare shows',shows, default=shows[0], key=23)

            if (len(choices)!=0):
                st.markdown('### TV TRP')
                comparison_function(tv_trp, tv_rank, choices, "Show TV Show - TV TRP & Rank Data",24)
                st.markdown("""<hr style="border:dashed 2px #333" /> """, unsafe_allow_html=True)

                st.markdown('### Online TRP')
                comparison_function(online_trp, online_rank, choices, "Show TV Show - Online TRP & Rank Data",25)
            else:
                st.markdown("##### Please select shows")
            
            st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)

        if (st.sidebar.checkbox("Show Channelwise Performance Comparison", key=26)):
            performance_comparison(info, tv_trp, tv_rank, online_trp, online_rank, 'Channel', 'channel', 27,28,29)
        
        if (st.sidebar.checkbox("Show Timeslotwise Performance Comparison", key=30)):
            performance_comparison(info, tv_trp, tv_rank, online_trp, online_rank, 'Time', 'timeslot', 31,32,33)
        
        if (st.sidebar.checkbox("Show Typewise Performance",key=69)):
            performance_comparison(info, tv_trp, tv_rank, online_trp, online_rank, 'Type', 'type', 70,71,72)

    else:
        st.title('Others')

if __name__ == '__main__':
    if st._is_running_with_streamlit:
        main()
    else:
        sys.argv = ["streamlit", "run", sys.argv[0]]
        sys.exit(cli.main())
