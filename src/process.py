from input import load_data
from main_functions import add_channels, add_shows
from output import store_into_json


def process(choice, new_path):
    print ("\nProcessing begins...\n")

    if choice==1 or choice==4 or choice==5:
        data,trp,week = load_data(choice)
    elif choice==2 or choice==3:
        show_data, data, trp, week = load_data(choice)
    
    trp_keys = trp[week].keys()

    exit = False
    not_present = []
    
    for trp_key in trp_keys:
        if trp_key not in data.keys():
            not_present.append(trp_key)
            exit = True

    if exit:
        if choice in [1,2,3,4]:
            print ('Following shows are not present in shows.json file: ')
        elif choice == 5:
            print ('Following channels are not present in channels.json file: ')
        
        for index,ele in enumerate(not_present):
            print (str(index+1)+'. ' + ele)
        print ()

        if choice==5:
            data = add_channels(not_present)
        elif choice==2 or choice==3:
            data = add_shows(not_present, choice, show_data)
        elif choice==1 or choice==4:
            data = add_shows(not_present, choice)
        
        print ()

    for ele in data:
        trp_data = trp[week].get(ele)

        if trp_data is not None:
            if choice==1:
                ele_data = data[ele]['TV TRP']
            elif choice==2 or choice == 3:
                ele_data = data[ele]['TRP']
            elif choice==4:
                ele_data = data[ele]['Online TRP']
            elif choice==5:
                ele_data = data[ele]
            
            ele_data[week] = trp_data

    store_into_json(new_path, data)
    print ("Stored successfully into json\n")
    print ("Processing ends...\n")
    print ('-'.center(100,'-'))
