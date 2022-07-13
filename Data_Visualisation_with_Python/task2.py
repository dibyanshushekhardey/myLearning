import pandas as pd 
import matplotlib.pyplot as plt 
import seaborn as sns 

# create  the dataframes using the json file
df = pd.read_json(r'./rain.json')

# plotting temperature vs month 
#plt.figure(figsize=(15, 5))
#plt.plot(df['Month'], df['Temperature'], label="Temperature")
#plt.show()

# plot raainfall
plt.figure(figsize=(17, 5))
plt.plot(df['Month'], df['Rainfall'], label="Rainfall")
plt.plot(df['Month'], df['Temperature'], label="Temperature")
plt.legend()
plt.show()