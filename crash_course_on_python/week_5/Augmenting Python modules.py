#Augmenting Python Modules
import random
random.randint(1, 10)
# Out: 3
random.randint(1, 10)
# Out:8
random.randint(1, 10)
# Out:8

import datetime
#Datetime module
now = datetime.datetime.now()
type(now)
# Out:<class 'datetime.datetime'>
print(now)
# Out:2020-09-29 23:45:53.539375
now.year
# Out:2020
print(now + datetime.timedelta(days=28))
# Out:2020-10-27 23:45:53.539375
