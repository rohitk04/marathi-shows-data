from input import load_channels, load_shows
from output import store_into_csv

def convert(choice):
    print ("Conversion begins...")
    if (choice=='Channel'):
        channels = load_channels()

        dict1 = {}
        dict2 = {}

        for channel in channels:
            dict1[channel] = {}
            dict2[channel] = {}
            
            grp = channels[channel]
            for week in grp.keys():
                dict1[channel][week] = grp[week]['GRP']
                dict2[channel][week] = grp[week]['Rank']

        store_into_csv(dict1, 'Channel', 'data/csv/channels/channels_grp.csv')
        store_into_csv(dict2, 'Channel', 'data/csv/channels/channels_rank.csv')
    else:
        shows = load_shows()

        dict1 = {}
        new_keys = ['Channel', 'Type', 'Platform', 'Time']
        for show in shows:
            dict1[show] = {new_key:shows[show][new_key] for new_key in new_keys}
        store_into_csv(dict1, 'Show', 'data/csv/shows/info.csv')
             
        if (choice == 'TV'):
            dict2 = {}
            dict3 = {}
        
            for show in shows:
                dict2[show] = {}
                dict3[show] = {}
                
                tv_trp = shows[show]['TV TRP']
                
                for week in tv_trp.keys():
                    dict2[show][week] = tv_trp[week]['TRP']
                    dict3[show][week] = tv_trp[week]['Rank']
            
            store_into_csv(dict2, 'Show', 'data/csv/shows/tv/tv_trp_trp.csv')
            store_into_csv(dict3, 'Show', 'data/csv/shows/tv/tv_trp_rank.csv')
        elif (choice == 'Online'):
            dict4 = {}
            dict5 = {}

            for show in shows:
                dict4[show] = {}
                dict5[show] = {}

                online_trp = shows[show]['Online TRP']
                for week in online_trp.keys():
                    dict4[show][week] = online_trp[week]['TRP']
                    dict5[show][week] = online_trp[week]['Rank']
            
            store_into_csv(dict4, 'Show', 'data/csv/shows/online/online_trp_trp.csv')
            store_into_csv(dict5, 'Show', 'data/csv/shows/online/online_trp_rank.csv')
        else:
            raise RuntimeError('Invalid Choice')
    
    print ("Stored successfully into csv")
    print ("Conversion ends...")
    print ()