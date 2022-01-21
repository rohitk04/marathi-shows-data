import json

def load_data():
    show_data = json.load(open('data/json/shows/shows.json'))
    data = json.load(open('mahaepisode/mahaepisodes.json'))
    trp = json.load(open('mahaepisode/mahaepisode_trp.json'))
    week = list(trp.keys())[0]
    
    return show_data, data, trp, week

def store_into_json(filename, json_object):
    with open(filename,'w') as outfile:
        json.dump(json_object, outfile, indent=4)

def add_show(show, show_data):
    show_json = json.load(open('mahaepisode/dummy_show.json'))
    show_json[show] = show_json.pop("Show_Name")
    
    new_json = {"Platform":show_data['Platform'], "Channel":show_data['Channel'], "Type":show_data['Type']}
    show_json[show].update(new_json)
    
    return show_json

def add_shows(not_present, show_data):
    shows_json = json.load(open('mahaepisode/mahaepisodes.json'))
    
    print ('\nAdding shows...\n')
    
    for show in not_present:
        if show in show_data:
            shows_json[show] = add_show(show, show_data[show])[show]
            print (show + '\n' + str(shows_json[show]))
        else:
            raise RuntimeError('Show not present in shows.json')
        
    store_into_json('mahaepisode/mahaepisodes.json', shows_json)

print ("\nProcessing begins...\n")

show_data, data, trp, week = load_data()
store_into_json('mahaepisode/mahaepisodes_backup.json', data)

trp_keys = trp[week].keys()

exit = False
not_present = []

for trp_key in trp_keys:
    if trp_key not in data.keys():
        not_present.append(trp_key)
        exit = True

msg = 'shows'
if exit:
    print ('Following ' + msg + ' are not present in ' + msg + '.json file: ')
    for index,ele in enumerate(not_present):
        print (str(index+1)+'. ' + ele)
    print ()
    
    add_shows(not_present, show_data)
    raise RuntimeError(msg.capitalize() + " added in " + msg + ".json file. \nPlease try again.")

for ele in data:
        trp_data = trp[week].get(ele)

        if trp_data is not None:
            ele_data = data[ele]['TRP']
            ele_data[week] = trp_data

store_into_json('mahaepisode/mahaepisodes.json', data)

print ("\nStored successfully into json\n")
print ("\nProcessing ends...\n")
print ()
print ('-'.center(40,'-'))