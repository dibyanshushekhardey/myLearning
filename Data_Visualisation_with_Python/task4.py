import pandas as pd 
import matplotlib.pyplot as plt 
import seaborn as sns


df = pd.read_csv(r'./birthYearly.csv')
#print(df)


dataP = df.pivot("month", "year", "births")
print(dataP)

sns.heatmap(dataP, annot=True, fmt="d")
plt.show()