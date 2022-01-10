from input import load_data
from output import print_data, store

choice = 'Online'

shows,trp,week = load_data(choice)
store('shows2.json', shows)

trp_keys = trp[week].keys()

exit = False
show_not_present = []

for trp_key in trp_keys:
    if trp_key not in shows.keys():
        show_not_present.append(trp_key)
        exit = True

if exit:
    print ("Following shows are not present in shows.json file: ")
    for ele in show_not_present:
        print (ele)
    raise ("Add shows in shows.json file")

for show in shows:
    data = trp[week].get(show)

    if data is not None:
        show_data = shows[show][choice + ' TRP']
        show_data[week] = data

print_data(shows)
store('shows.json', shows)