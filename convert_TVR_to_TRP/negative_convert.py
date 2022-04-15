import pandas as pd
import scipy.stats as stats

import sys
sys.path.append('../barc')
from data.paths.paths import paths

sys.path.append('/convert_TVR_to_TRP')

def negative_convert():
    print ("\nNegative Conversion begins...\n")

    processing_slice = float(input('Enter processing slice value: '))

    df = pd.read_csv(paths["convert_tvr_to_trp"]["trp"]).set_index('Show')

    na_df = df.dropna()

    new_df = na_df[na_df['TVR'] <= processing_slice]
    train_y = list(new_df['TRP'])
    train_x = list(new_df['TVR'])

    slope, intercept = stats.linregress(train_x, train_y)[:2]

    show = list(df[pd.isna(df['TRP'])].index)
    test_x = list(df[pd.isna(df['TRP'])]['TVR'])
    test_y = list(map(lambda y:round(y,1),list(map(lambda x:x*slope+intercept, test_x))))

    new_df = pd.DataFrame(zip(show,test_x, test_y), columns=['Show','TVR', 'TRP']).set_index('Show')
    
    df = pd.read_csv(paths["convert_tvr_to_trp"]["result_trp"]).set_index('Show')
    shows = list(df[df['TRP']<0].index)
    new_df = new_df.loc[shows,:]
 
    df.update(new_df)
    df.to_csv(paths["convert_tvr_to_trp"]["result_trp"])

    print ("\nStored successfully into csv\n")
    print ("Negative Conversion ends...\n")
    print ('-'.center(110,'-'))