import pandas as pd

from input import load_shows
from output import store_into_csv

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

store_into_csv(dict1, 'Show', 'data/csv/shows/info.csv')
store_into_csv(dict2, 'Show', 'data/csv/shows/tv/tv_trp_trp.csv')
store_into_csv(dict3, 'Show', 'data/csv/shows/tv/tv_trp_rank.csv')
store_into_csv(dict4, 'Show', 'data/csv/shows/online/online_trp_trp.csv')
store_into_csv(dict5, 'Show', 'data/csv/shows/online/online_trp_rank.csv')

print ('Stored successfully')