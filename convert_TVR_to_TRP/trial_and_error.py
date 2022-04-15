import pandas as pd
import scipy.stats as stats

import sys
sys.path.append('../barc')
from data.paths.paths import paths

sys.path.append('/convert_TVR_to_TRP')

def trial_and_error(reading_slice):
    print ("\nTrial and Error begins...\n")

    df = pd.read_csv(paths["convert_tvr_to_trp"]["trp"]).set_index('Show')

    na_df = df.dropna()
    tvr_set = sorted(set(na_df['TVR']))
    
    print ('-'.center(110,'-'))

    for i in tvr_set:
        num = round(i,2)
            
        new_df = na_df[na_df['TVR'] <= num]
        train_y = list(new_df['TRP'])
        train_x = list(new_df['TVR'])

        if (len(train_x)>=2):
            slope, intercept = stats.linregress(train_x, train_y)[:2]
            
            show = list(df[pd.isna(df['TRP'])].index)
            test_x = list(df[pd.isna(df['TRP'])]['TVR'])
            test_y = list(map(lambda y:round(y,1),list(map(lambda x:x*slope+intercept, test_x))))

            new_df = pd.DataFrame(zip(show,test_x, test_y), columns=['Show','TVR', 'TRP'])
            new_df = new_df.set_index('Show')
            new_df = new_df[new_df['TVR'] <= reading_slice]
            
            print ('Processing Slice Value: ' + str(num))
            print (new_df.to_markdown(tablefmt='grid'))
            print ('-'.center(110,'-'))

    print ("Trial and Error ends...\n")