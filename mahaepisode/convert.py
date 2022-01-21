import json
import pandas as pd

def load_shows():
    return json.load(open('mahaepisode/mahaepisodes.json'))


def store_into_csv(dict_object, col_name, path):
    return pd.DataFrame.from_dict(dict_object, orient='index').sort_index().rename_axis(index=col_name).to_csv(path)

print ("\nConversion begins...\n")
shows = load_shows()
print (shows)

dict1 = {}
new_keys = ['Channel', 'Type', 'Platform']
for show in shows:
    dict1[show] = {new_key:shows[show][new_key] for new_key in new_keys}
store_into_csv(dict1, 'Show', 'mahaepisode/info.csv')
        
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

store_into_csv(dict2, 'Show', 'mahaepisode/trp.csv')
store_into_csv(dict3, 'Show', 'mahaepisode/rank.csv')
store_into_csv(dict4, 'Show', 'mahaepisode/time.csv')

print ("\nStored successfully into csv\n")
print ("\nConversion ends...\n")
print ()
