import json
import pandas as pd

import sys
sys.path.append('../barc')
from info.paths import paths

def load_data(choice):
    data = json.load(open(paths[choice]["data_json"]))

    if choice in [1,2,3,4]:
        trp = json.load(open(paths[choice]['trp_json']))
        week = list(trp.keys())[0]

        if choice == 1 or choice == 4:
            return data, trp, week
        elif choice == 2 or choice == 3:
            show_data = json.load(open(paths[choice]["show_data_json"]))
            return show_data, data, trp, week
            
    elif choice == 5:
        grp = json.load(open(paths[choice]['grp_json']))
        week = list(grp.keys())[0]
        return data, grp, week

def load_shows(path):
    return json.load(open(path))

def load_channels():
    return json.load(open(paths[5]['data_json']))

def read_csv(path, col_name):
    return pd.read_csv(path).set_index(col_name).sort_index()