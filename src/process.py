from input import load_data
from main_functions import add_channels, add_shows
from output import store_into_json

def process(choice, old_path, new_path, msg):
    print ("\nProcessing begins...\n")

    if choice!="Mahaepisode":
        data,trp,week = load_data(choice)
    else:
        show_data, data, trp, week = load_data(choice)
    
    store_into_json(old_path, data)

    trp_keys = trp[week].keys()

    exit = False
    not_present = []

    for trp_key in trp_keys:
        if trp_key not in data.keys():
            not_present.append(trp_key)
            exit = True

    if exit:
        print ('Following ' + msg + ' are not present in ' + msg + '.json file: ')
        for index,ele in enumerate(not_present):
            print (str(index+1)+'. ' + ele)
        print ()
        if choice=='Channel':
            data = add_channels(not_present)
        elif choice=='Mahaepisode':
            data = add_shows(not_present, show_data)
        else:
            data = add_shows(not_present)
        
        print ('-'.center(73,'-'))
        print ()

    for ele in data:
        trp_data = trp[week].get(ele)

        if trp_data is not None:
            if choice=='Channel':
                ele_data = data[ele]
            elif choice=='Mahaepisode':
                ele_data = data[ele]['TRP']
            else:
                ele_data = data[ele][choice + ' TRP']
            ele_data[week] = trp_data

    store_into_json(new_path, data)
    print ("Stored successfully into json\n")
    print ("Processing ends...\n")
    print ('-'.center(73,'-'))