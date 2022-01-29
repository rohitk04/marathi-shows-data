import json

from output import store_into_json
        
def add_channel(channel):
    channel_json = json.load(open('data/json/channels/dummy_channel.json'))
    channel_json[channel] = channel_json.pop("Channel_Name")

    print ('-'.center(73,'-'))
    
    print (channel_json)

    print ('-'.center(73,'-'))
    print ()

    return channel_json

def add_channels(not_present):
    channels_json = json.load(open('data/json/channels/channels.json'))
    
    print ('\nAdding channels...\n')
    
    for channel in not_present:
        channels_json[channel] = add_channel(channel)[channel]
    
    store_into_json('data/json/channels/channels.json', channels_json)
    return channels_json