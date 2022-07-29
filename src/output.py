import json
import pandas as pd

def print_data(shows):
    for show in shows:
        print (show)

        data = shows[show]
        print (data)

        print ()

def store_into_json(filename, json_object):
    with open(filename,'w') as outfile:
        json.dump(json_object, outfile, indent=4)

def store_into_csv(dict_object, col_name, path):
    return pd.DataFrame.from_dict(dict_object, orient='index').sort_index().rename_axis(index=col_name).to_csv(path)