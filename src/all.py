from convert import convert_to_csv, convert_to_json
from main_functions import get_week
from process import process
from data.paths.paths import paths
from data.choices.choices import choices
from backup.backup import backup

if __name__ == "__main__":
    print ("Select: ")

    for key, value in choices.items():
        print (str(key) + ". " + value)
    print ()

    ch_list = map(int, input("Enter choices list (seperated by space): ").split(" "))

    week = get_week()

    for ch in ch_list:
        print ()
        print (('>>>>> ' + choices.get(ch) + ' <<<<<').center(100,' '))
        print ()
        print ('-'.center(100,'-'))
        print ()

        decision = convert_to_json(ch, week)
        if (decision == 'Y'):
            process(ch, paths[ch]["data_json"])
            convert_to_csv(ch)
        
    backup()