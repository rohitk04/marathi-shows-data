import pandas as pd

from input import load_shows

shows = load_shows()

dict1 = {}
dict2 = {}
dict3 = {}
dict4 = {}
dict5 = {}

new_keys = ['Channel', 'Type', 'Platform', 'Time']
for show in shows:
    dict1[show] = {new_key:shows[show][new_key] for new_key in new_keys}

for show in shows:
    dict2[show] = {}
    dict3[show] = {}
    dict4[show] = {}
    dict5[show] = {}

    tv_trp = shows[show]['TV TRP']
    for week in tv_trp.keys():
        dict2[show][week] = tv_trp[week]['TRP']
        dict3[show][week] = tv_trp[week]['Rank']

    online_trp = shows[show]['Online TRP']
    for week in online_trp.keys():
        dict4[show][week] = online_trp[week]['TRP']
        dict5[show][week] = online_trp[week]['Rank']

df1 = pd.DataFrame.from_dict(dict1,orient="index").sort_index().rename_axis(index='Show').to_csv('data/csv/info.csv')
df2 = pd.DataFrame.from_dict(dict2,orient="index").sort_index().rename_axis(index='Show').to_csv('data/csv/tv_trp_trp.csv')
df3 = pd.DataFrame.from_dict(dict3,orient="index").sort_index().rename_axis(index='Show').to_csv('data/csv/tv_trp_rank.csv')
df4 = pd.DataFrame.from_dict(dict4,orient="index").sort_index().rename_axis(index='Show').to_csv('data/csv/online_trp_trp.csv')
df5 = pd.DataFrame.from_dict(dict5,orient="index").sort_index().rename_axis(index='Show').to_csv('data/csv/online_trp_rank.csv')

print ('Stored successfully')