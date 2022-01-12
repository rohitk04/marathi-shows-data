from input import load_data
from output import print_data, store_into_json

def process(choice, old_path, new_path, msg):
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
        for ele in not_present:
            print (ele)
        raise RuntimeError("Add "+ msg + " in " + msg + ".json file")

    for ele in data:
        trp_data = trp[week].get(ele)

        if trp_data is not None:
            if choice!='Channel':
                ele_data = data[ele][choice + ' TRP']
            else:
                ele_data = data[ele]
            ele_data[week] = trp_data

    # print_data(data)
    store_into_json(new_path, data)
    print ("Stored successfully")

if __name__ == "__main__":
    print ("Select: ")
    print ("1. TV Shows - TV TRP")
    print ("2. TV Shows - Online TRP")
    print ("3. Channels")
    print ()

    ch = int(input("Enter choice: "))
    
    if (ch==1):
        process("TV", 'data/json/shows2.json', 'data/json/shows.json', 'shows')
    elif (ch==2):
        process("Online", 'data/json/shows2.json', 'data/json/shows.json', 'shows')
    elif (ch==3):
        process("Channel", 'data/json/channels2.json', 'data/json/channels.json', 'channels')
    else:
        print ('Invalid Choice')
