from add_channels import add_channels
from input import load_data
from output import store_into_json
from add_shows import add_shows

def process(choice, old_path, new_path, msg):
    print ("\nProcessing begins...\n")

    data,trp,week = load_data(choice)
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
        if (choice!='Channel'):
            add_shows(not_present)
        else:
            add_channels(not_present)
        raise RuntimeError(msg.capitalize() + " added in " + msg + ".json file. \nPlease try again.")

    for ele in data:
        trp_data = trp[week].get(ele)

        if trp_data is not None:
            if choice!='Channel':
                ele_data = data[ele][choice + ' TRP']
            else:
                ele_data = data[ele]
            ele_data[week] = trp_data

    store_into_json(new_path, data)
    print ("\nStored successfully into json\n")
    print ("\nProcessing ends...\n")
    print ()
    print ('-'.center(40,'-'))