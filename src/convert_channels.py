import json
import pandas as pd

from input import load_channels

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

df1 = pd.DataFrame.from_dict(dict1,orient="index").sort_index().rename_axis(index='Show').to_csv('data/csv/channels_grp.csv')
df2 = pd.DataFrame.from_dict(dict2,orient="index").sort_index().rename_axis(index='Show').to_csv('data/csv/channels_rank.csv')

print ('Stored successfully')