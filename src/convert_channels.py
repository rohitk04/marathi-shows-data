import json
import pandas as pd

from input import load_channels
from output import store_into_csv

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

print ('Stored successfully')