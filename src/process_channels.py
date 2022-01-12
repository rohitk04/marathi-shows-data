from input import load_data
from output import print_data, store

choice = 'Channel'

channels,trp,week = load_data(choice)
store('data/json/channels2.json', channels)

trp_keys = trp[week].keys()

exit = False
channel_not_present = []

for trp_key in trp_keys:
    if trp_key not in channels.keys():
        channel_not_present.append(trp_key)
        exit = True

if exit:
    print ("Following channels are not present in channels.json file: ")
    for ele in channel_not_present:
        print (ele)
    raise ("Add channels in channels.json file")

for channel in channels:
    data = trp[week].get(channel)

    if data is not None:
        show_data = channels[channel]
        show_data[week] = data

print_data(channels)
# store('data/json/channels.json', channels)