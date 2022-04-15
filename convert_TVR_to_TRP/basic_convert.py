import pandas as pd
import scipy.stats as stats

def basic_convert():
    print ('-'.center(110,'-'))      
    print ("\nBasic Conversion begins...\n")

    df = pd.read_csv('convert_TVR_to_TRP/TRP.csv').set_index('Show')

    na_df = df.dropna()

    train_y = list(na_df['TRP'])
    train_x = list(na_df['TVR'])

    slope, intercept = stats.linregress(train_x, train_y)[:2]

    show = list(df[pd.isna(df['TRP'])].index)
    test_x = list(df[pd.isna(df['TRP'])]['TVR'])
    test_y = list(map(lambda y:round(y,1),list(map(lambda x:x*slope+intercept, test_x))))

    new_df = pd.DataFrame(zip(show,test_x, test_y), columns=['Show','TVR', 'TRP']).set_index('Show')

    df.update(new_df)
    df.to_csv('convert_TVR_to_TRP/Result_TRP.csv')

    print ("Stored successfully into csv\n")
    print ("Basic Conversion ends...\n")
    print ('-'.center(110,'-'))
    
    df = df[df['TRP']<0]
    reading_slice = df['TVR'].max()

    if (len(df)==0):
        return 'N', -1
    else:
        return 'Y', reading_slice