import pandas as pd
import json

from output import store_into_json

def convert_to_json(choice, week):
    with open('data/trp.txt') as f:
        lines = f.readlines()

    codes = json.load(open('data/json/shows/codes.json'))

    if (choice == "TV"):
        output_path = 'data/json/shows/tv/tv_trp.json'
        cols = ['Hashtag', 'Show','TRP']
    elif (choice == "Online"):
        output_path = 'data/json/shows/online/online_trp.json'
        cols = ['Hashtag', 'Show','TRP']
    else:
        output_path = 'data/json/shows/mahaepisode/mahaepisode_trp.json'
        cols = ['Hashtag', 'Show','TRP', 'Time']

    df = pd.DataFrame(columns=cols)

    if (choice=="TV" or "Online"):
        for line in lines:
            words = line.split(" ")
            df = df.append({
                    'Hashtag':words[1].strip(),
                    'Show':codes.get(words[1].strip()),
                    'TRP':float(words[3]
                    )}, ignore_index=True)
    else:
        for line in lines:
            words = line.split(" ")
            df = df.append({
                'Hashtag':words[1].strip(),
                'Show':codes.get(words[1].strip()),
                'TRP':float(words[3]),
                'Time':words[5].strip("\n")
                }, ignore_index=True)


    df['Rank'] = df['TRP'].rank(0,ascending=False,method='dense',na_option='keep').astype(int)
    df = df.sort_values(by='Rank')
        
    print (df)
    print ()

    dictionary = {}
    dictionary[week] = {}

    if (choice=="TV" or "Online"):
        for index, row in df.iterrows():
            dictionary[week][row['Show']]={
                'TRP':row['TRP'],
                'Rank':row['Rank']
            }
    else:
        for index, row in df.iterrows():
            dictionary[week][row['Show']]={
                'TRP':row['TRP'],
                'Rank':row['Rank'],
                'Time':row['Time']
            }
    
    ch = input("Do you want to continue?(Y/N): ").lower()
    print ()

    if (ch =='y'):
        store_into_json(output_path,dictionary)
        print ('Stored successfully')