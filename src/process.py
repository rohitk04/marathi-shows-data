from input import load_data
from output import print_data, store_into_json

def process(choice, old_path, new_path, msg):
    print ("Processing begins...")

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
            print ('- ' + ele)
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
    print ("Stored successfully into json")
    print ("Processing ends...")
    print ()