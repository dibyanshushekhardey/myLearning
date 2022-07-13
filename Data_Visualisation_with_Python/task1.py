import pandas as pd 
import matplotlib.pyplot as plt


# create  the dataframes using the json file
df = pd.read_json(r'./rain.json')
print(df)

print("df:statistics: ", df.describe())

# plotting the
# dataset

df.plot(x="Month", y="Temperature")
df.plot(x="Month", y="Rainfall")
plt.show()