from convert import convert_to_csv, convert_to_json
from main_functions import get_week
from process import process
from data.paths.paths import paths
from data.choices.choices import choices

week = get_week()

for ch in [4,5,1]:
    print ()
    print (choices.get(ch).center(73,' '))
    print ('-'.center(73,'-'))
    print ()

    decision = convert_to_json(ch, week)
    if (decision == 'Y'):
        process(ch, paths[ch]["backup_json"], paths[ch]["data_json"])
        convert_to_csv(ch)