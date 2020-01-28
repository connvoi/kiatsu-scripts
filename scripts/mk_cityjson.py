# Build cities airpressure data json

import pandas as pd
import modules.api as api
import modules.parse as parse
import time

df = pd.read_csv('../seed/citylist.csv')


count=0
for i,row in df.iterrows():
    data = api.Api().get(row['cityid'])
    time.sleep(2)
    json = parse.Parse().parse(data)
    with open('../data/city/'+row['nameid']+'.json', mode="w") as f:
        f.write(json)
    f.close