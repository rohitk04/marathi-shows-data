import json
import pandas as pd
from input import load_channels, load_shows
from output import store_into_csv, store_into_json
from info.paths import paths

def get_new_row(choice, words, codes):
    if (choice==1 or choice==4):
        return pd.DataFrame({
            'Hashtag':[words[0].strip()],
            'Show':[codes.get(words[0].strip())],
            'TRP':[float(words[1])]
            })
    elif (choice==2 or choice ==3):
        return pd.DataFrame({
            'Hashtag':[words[0].strip()],
            'Show':[codes.get(words[0].strip())],
            'TRP':[float(words[1])],
            'Time':[words[2].strip("\n")]
            })
    elif (choice==5):
        return pd.DataFrame({
            'Hashtag': [words[0].strip()],
            'Channel': [codes.get(words[0].strip())],
            'GRP': [float(words[1].strip("\n"))]
        })

def convert_to_csv(choice):
    print ("\nConversion begins...\n")
    if (choice==1 or choice==4):
        shows = load_shows(paths[choice]["data_json"])

        dict1 = {}
        new_keys = ['Channel', 'Type', 'Platform', 'Time']
        for show in shows:
            dict1[show] = {new_key:shows[show][new_key] for new_key in new_keys}
        store_into_csv(dict1, 'Show', paths[choice]["info_csv"])
             
        if (choice == 1):
            dict2 = {}
            dict3 = {}
        
            for show in shows:
                dict2[show] = {}
                dict3[show] = {}
                
                tv_trp = shows[show]['TV TRP']
                
                for week in tv_trp.keys():
                    dict2[show][week] = tv_trp[week]['TRP']
                    dict3[show][week] = tv_trp[week]['Rank']
            
            store_into_csv(dict2, 'Show', paths[choice]["trp_csv"])
            store_into_csv(dict3, 'Show', paths[choice]["rank_csv"])
        elif (choice == 4):
            dict4 = {}
            dict5 = {}

            for show in shows:
                dict4[show] = {}
                dict5[show] = {}

                online_trp = shows[show]['Online TRP']
                for week in online_trp.keys():
                    dict4[show][week] = online_trp[week]['TRP']
                    dict5[show][week] = online_trp[week]['Rank']
            
            store_into_csv(dict4, 'Show', paths[choice]['trp_csv'])
            store_into_csv(dict5, 'Show', paths[choice]['rank_csv'])
    elif (choice==2 or choice==3):
        shows = load_shows(paths[choice]['data_json'])
        
        dict1 = {}
        new_keys = ['Channel', 'Type', 'Platform']
        for show in shows:
            dict1[show] = {new_key:shows[show][new_key] for new_key in new_keys}
        store_into_csv(dict1, 'Show', paths[choice]['info_csv'])
                
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

        store_into_csv(dict2, 'Show', paths[choice]['trp_csv'])
        store_into_csv(dict3, 'Show', paths[choice]['rank_csv'])
        store_into_csv(dict4, 'Show', paths[choice]['time_csv'])
    elif (choice==5):
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

        store_into_csv(dict1, 'Channel', paths[choice]['grp_csv'])
        store_into_csv(dict2, 'Channel', paths[choice]['rank_csv'])
    else:
        raise RuntimeError('Invalid Choice')
    
    print ("Stored successfully into csv\n")
    print ("Conversion ends...\n")
    print ('-'.center(100,'-'))

def convert_to_json(choice, week):
    print ("\nConversion begins...\n")

    codes = json.load(open(paths[choice]['codes']))
    input_path = paths[choice]['txt']

    if (choice == 1) or (choice == 4):
        cols = ['Hashtag', 'Show','TRP']
        output_path = paths[choice]['trp_json']
        rank_column = 'TRP'
    elif (choice == 2) or (choice == 3):
        cols = ['Hashtag', 'Show','TRP', 'Time']
        output_path = paths[choice]['trp_json']
        rank_column = 'TRP'
    elif (choice == 5):
        cols = ['Hashtag', 'Channel', 'GRP']
        output_path = paths[choice]['grp_json']
        rank_column = 'GRP'

    with open(input_path) as f:
        lines = f.readlines()

    df = pd.DataFrame(columns=cols)
    
    for line in lines:
        words = line.split("-")
        new_row = get_new_row(choice, words, codes)
        df = pd.concat([df, new_row])

    df['Rank'] = df[rank_column].rank(0,ascending=False,method='dense',na_option='keep').astype(int)
    df = df.sort_values(by='Rank')
    
    print (df.to_markdown(tablefmt='grid', index=False))
    print ()

    dictionary = {}
    dictionary[week] = {}

    if (choice == 1 or choice == 4):
        for index, row in df.iterrows():
            dictionary[week][row['Show']]={
                'TRP':row['TRP'],
                'Rank':row['Rank']
            }
    elif (choice == 2 or choice == 3):
        for index, row in df.iterrows():
            dictionary[week][row['Show']]={
                'TRP':row['TRP'],
                'Rank':row['Rank'],
                'Time':row['Time'].strip()
            }
    elif (choice == 5):
        for index, row in df.iterrows():
            dictionary[week][row['Channel']]={
                'GRP':row['GRP'],
                'Rank':int(row['Rank'])
            }
    
    ch = input("Do you want to continue? (Press y or Y if yes): ").upper()
    print ()
    print ('-'.center(100,'-'))
    print ()

    if (ch =='Y'):
        store_into_json(output_path,dictionary)
        print ("Stored successfully into json\n")
        print ("Conversion ends...\n")
        print ('-'.center(100,'-'))
    return ch