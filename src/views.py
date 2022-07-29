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

        week = week_function(trp,rank, 2, 3)
        if (st.sidebar.checkbox("Show Channelwise Performance",key=4)):      
            channel_function(week, info, trp, rank, 5, 6)
        if (st.sidebar.checkbox("Show Timeslotwise Performance",key=7)):
            timeslot_function(week, trp, rank, info, 8, 9, True) 
        if (st.sidebar.checkbox("Show Typewise Performance",key=10)):
            type_function(week, info, trp, rank, 11, 12) 

    elif (select == 'Mahaepisode'):
        st.title('Mahaepisode')

        trp = read_csv(paths[2]['trp_csv'], 'Show')
        rank = read_csv(paths[2]['rank_csv'], 'Show')
        time_df = read_csv(paths[2]['time_csv'], 'Show')
        
        week = week_function(trp,rank, 13, 14)

        if (st.sidebar.checkbox("Show Channelwise Performance",key=15)):      
            channel_function(week, info, trp, rank, 16, 17)
        
        if (st.sidebar.checkbox("Show Timeslotwise Performance",key=18)):
            timeslot_function(week, trp, rank, time_df, 19, 20)
        
        if (st.sidebar.checkbox('Show Channel Leaders', key=21)):
            find_special_episode_leaders('Channel',week, time_df[week], trp[week], rank[week], info, 22)

        if (st.sidebar.checkbox('Show Timeslot Leaders', key=23)):
            find_special_episode_leaders('Time',week, time_df[week], trp[week], rank[week], info, 24, 25)

        if (st.sidebar.checkbox('Show Type Leaders', key=26)):
            find_special_episode_leaders('Type', week, time_df[week], trp[week], rank[week], info, 27, 28)

    elif (select == '2 Hours Special Episode'):
        st.title('2 Hours Special Episode')

        info = read_csv(paths[3]['info_csv'], 'Show')
        trp = read_csv(paths[3]['trp_csv'], 'Show')
        rank = read_csv(paths[3]['rank_csv'], 'Show')
        time_df = read_csv(paths[3]['time_csv'], 'Show')

        week = week_function(trp,rank, 29, 30)

        if (st.sidebar.checkbox("Show Channelwise Performance",key=31)):      
            channel_function(week, info, trp, rank, 32, 33)
        
        if (st.sidebar.checkbox("Show Timeslotwise Performance",key=34)):
            timeslot_function(week, trp, rank, time_df, 35, 36)
        
        if (st.sidebar.checkbox('Show Channel Leaders', key=37)):
            find_special_episode_leaders('Channel',week, time_df[week], trp[week], rank[week], info, 38)

        if (st.sidebar.checkbox('Show Timeslot Leaders', key=39)):
            find_special_episode_leaders('Time',week, time_df[week], trp[week], rank[week], info, 40, 41)

        if (st.sidebar.checkbox('Show Type Leaders', key=42)):
            find_special_episode_leaders('Type', week, time_df[week], trp[week], rank[week], info, 43, 44)
        
    elif (select == 'Shows - Online TRP'):
        st.title('Shows - Online TRP')

        trp = read_csv(paths[4]['trp_csv'], 'Show')
        rank = read_csv(paths[4]['rank_csv'], 'Show')

        week = week_function(trp, rank,45,46)

        merged = pd.merge(info['Platform'], trp[week], how="inner",left_index=True, right_index=True).dropna()
        calculate_channel_count(merged, 47, 'Platform')

    elif (select == 'Channel'):
        st.title('Channel')

        trp = read_csv(paths[5]['grp_csv'], 'Channel')
        rank = read_csv(paths[5]['rank_csv'], 'Channel')

        if (st.sidebar.checkbox("Show Weekwise Performance",value=True,key=48)):
            week = week_function(trp, rank, 49, 50, True)
        
        if (st.sidebar.checkbox("Show comparison of channels",key=51)):
            st.markdown('### Comparison')

            channels = list(trp.index.unique())
            choices = st.sidebar.multiselect('Compare channels',channels, default=channels[0], key=52)

            if (len(choices)!=0):
                comparison_function(trp, rank, choices, 'Show Data', 53, True)
            else:
                st.markdown("##### Please select channels")

    elif (select == 'Leaders'):
        st.title('Leaders')
        st.markdown(':point_right: *To view ranks, click on \'Show Data\'*')
        
        tv_trp = read_csv(paths[1]["trp_csv"], 'Show')
        tv_rank = read_csv(paths[1]["rank_csv"], 'Show')
        
        online_trp = read_csv(paths[4]["trp_csv"], 'Show')
        online_rank = read_csv(paths[4]["rank_csv"], 'Show')
        
        weeks = list(tv_trp.columns.unique())
        week = st.sidebar.selectbox('Choose week', weeks, index=len(weeks)-1, key=54)

        if (st.sidebar.checkbox('Show Top Shows', value=True, key=55)):
            find_top_shows(week, info, tv_trp[week], tv_rank[week])

        if (st.sidebar.checkbox('Show Channel Leaders', key=56)):
            find_leaders('Channel',week, info, tv_trp[week], tv_rank[week], 57)

        if (st.sidebar.checkbox('Show Timeslot Leaders', key=58)):
            find_leaders('Time',week, info, tv_trp[week], tv_rank[week], 59, 60)

        if (st.sidebar.checkbox('Show Type Leaders', key=61)):
            find_leaders('Type', week, info, tv_trp[week], tv_rank[week], 62, 63)

        if (st.sidebar.checkbox('Show Platform Leaders', key=64)):
            find_leaders('Platform', week, info, online_trp[week], online_rank[week], 65)

    elif (select == 'Compare Shows'):
        st.title("Shows Comparison")

        tv_trp = read_csv(paths[1]["trp_csv"], 'Show')
        tv_rank = read_csv(paths[1]["rank_csv"], 'Show')
        online_trp = read_csv(paths[4]['trp_csv'], 'Show')
        online_rank = read_csv(paths[4]['rank_csv'], 'Show')

        if (st.sidebar.checkbox("Show show-wise Performance Comparison",value=True, key=66)):
            st.markdown('### Show-wise Performance Comparison')

            shows = list(info.index.unique())
            choices = st.sidebar.multiselect('Compare shows',shows, default=shows[0], key=67)

            if (len(choices)!=0):
                st.markdown('### TV TRP')
                comparison_function(tv_trp, tv_rank, choices, "Show TV Show - TV TRP & Rank Data",68)
                st.markdown("""<hr style="border:dashed 2px #333" /> """, unsafe_allow_html=True)

                st.markdown('### Online TRP')
                comparison_function(online_trp, online_rank, choices, "Show TV Show - Online TRP & Rank Data",69)
            else:
                st.markdown("##### Please select shows")
            
            st.markdown("""<hr style="height:2px;border:none;color:#333;background-color:#333;" /> """, unsafe_allow_html=True)

        if (st.sidebar.checkbox("Show Channelwise Performance Comparison", key=70)):
            performance_comparison(info, tv_trp, tv_rank, online_trp, online_rank, 'Channel', 'channel', 71,72,73)
        
        if (st.sidebar.checkbox("Show Timeslotwise Performance Comparison", key=74)):
            performance_comparison(info, tv_trp, tv_rank, online_trp, online_rank, 'Time', 'timeslot', 75,76,77)
        
        if (st.sidebar.checkbox("Show Typewise Performance",key=78)):
            performance_comparison(info, tv_trp, tv_rank, online_trp, online_rank, 'Type', 'type', 79,80,81)

    else:
        st.title('Others')

if __name__ == '__main__':
    if st._is_running_with_streamlit:
        main()
    else:
        sys.argv = ["streamlit", "run", sys.argv[0]]
        sys.exit(cli.main())
