import json

import pandas as pd
from input import load_channels, load_shows
from output import store_into_csv, store_into_json

def get_new_row(choice, words, codes):
    if (choice=="TV" or choice=="Online"):
        return pd.DataFrame({
            'Hashtag':[words[1].strip()],
            'Show':[codes.get(words[1].strip())],
            'TRP':[float(words[3])]
            })
    elif (choice=='Mahaepisode'):
        return pd.DataFrame({
            'Hashtag':[words[1].strip()],
            'Show':[codes.get(words[1].strip())],
            'TRP':[float(words[3])],
            'Time':[words[5].strip("\n")]
            })
    else:
        return pd.DataFrame({
            'Hashtag':[words[0].strip()],
            'Show':[codes.get(words[0].strip())],
            'Episode Name':[words[1].strip()],
            'TRP':[float(words[2])],
            'Time':[words[3].strip("\n")]
            })

def convert_to_csv(choice):
    print ("\nConversion begins...\n")
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
    elif (choice=='Mahaepisode'):
        shows = load_shows('data/json/shows/mahaepisode/mahaepisodes.json')
        
        dict1 = {}
        new_keys = ['Channel', 'Type', 'Platform']
        for show in shows:
            dict1[show] = {new_key:shows[show][new_key] for new_key in new_keys}
        store_into_csv(dict1, 'Show', 'data/csv/shows/mahaepisode/mahaepisode_info.csv')
                
        dict2 = {}
        dict3 = {}
        dict4 = {}

        for show in shows:
            dict2[show] = {}
            dict3[show] = {}
            dict4[show] = {}
            
            trp = shows[show]['TRP']
            
            for week in trp.keys():
                dict2[show][week] = trp[week]['TRP']
                dict3[show][week] = trp[week]['Rank']
                dict4[show][week] = trp[week]['Time']

        store_into_csv(dict2, 'Show', 'data/csv/shows/mahaepisode/mahaepisode_trp.csv')
        store_into_csv(dict3, 'Show', 'data/csv/shows/mahaepisode/mahaepisode_rank.csv')
        store_into_csv(dict4, 'Show', 'data/csv/shows/mahaepisode/mahaepisode_time.csv')
    else:
        shows = load_shows('data/json/shows/shows.json')

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
    
    print ("Stored successfully into csv\n")
    print ("Conversion ends...\n")
    print ('-'.center(73,'-'))

def convert_to_json(choice, week):
    print ("\nConversion begins...\n")

    codes = json.load(open('data/json/shows/codes.json'))

    if (choice == "TV"):
        input_path = 'data/trp.txt'
        output_path = 'data/json/shows/tv/tv_trp.json'
        cols = ['Hashtag', 'Show','TRP']
    elif (choice == "Online"):
        input_path = 'data/trp.txt'
        output_path = 'data/json/shows/online/online_trp.json'
        cols = ['Hashtag', 'Show','TRP']
    elif (choice == "Mahaepisode"):
        input_path = 'data/mahaepisode_trp.txt'
        output_path = 'data/json/shows/mahaepisode/mahaepisode_trp.json'
        cols = ['Hashtag', 'Show','TRP', 'Time']
    else:
        input_path = 'data/2_hour_special_episode_trp.txt'
        output_path = 'data/json/shows/2_hours_special_episode/2_hours_special_episode_trp.json'
        cols = ['Hashtag', 'Show','Episode Name', 'TRP', 'Time']

    with open(input_path) as f:
        lines = f.readlines()

    df = pd.DataFrame(columns=cols)
    
    for line in lines:
        if (choice == "2 Hour Special Episode"):
            words = line.split("-")
        else:
            words = line.split(" ")
            
        new_row = get_new_row(choice, words, codes)
        df = pd.concat([df, new_row])

    df['Rank'] = df['TRP'].rank(0,ascending=False,method='dense',na_option='keep').astype(int)
    df = df.sort_values(by='Rank')
    
    print (df.to_markdown(tablefmt='grid', index=False))
    print ()

    dictionary = {}
    dictionary[week] = {}

    if (choice=="TV" or choice == "Online"):
        for index, row in df.iterrows():
            dictionary[week][row['Show']]={
                'TRP':row['TRP'],
                'Rank':row['Rank']
            }
    elif (choice == "Mahaepisode"):
        for index, row in df.iterrows():
            dictionary[week][row['Show']]={
                'TRP':row['TRP'],
                'Rank':row['Rank'],
                'Time':row['Time']
            }
    else:
        for index, row in df.iterrows():
            dictionary[week][row['Show']]={
                'Episode Name':row['Episode Name'],
                'TRP':row['TRP'],
                'Rank':row['Rank'],
                'Time':row['Time']
            }
    
    ch = input("Do you want to continue?(Y/N): ").lower()
    print ()
    print ('-'.center(73,'-'))
    print ()

    if (ch =='y'):
        store_into_json(output_path,dictionary)
        print ("Stored successfully into json\n")
        print ("Conversion ends...\n")
        print ('-'.center(73,'-'))
    else:
        exit()