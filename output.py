import json

def print_data(shows):
    for show in shows:
        print (show)

        data = shows[show]
        print (data)

        print ()

def store(filename, json_object):
    with open(filename,'w') as outfile:
        json.dump(json_object, outfile, indent=4)