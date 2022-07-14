
# coding: utf-8

# In[1]:


import numpy as np
a = np.array([0,1,2,3,4,5,6,7,8,9])
np.mean(a)


# In[2]:


print(a)


# In[3]:


#imports pandas
import pandas as pd

#the urkl link that contains csv file
url = "Cartwheeldata.csv"

#read_csv file is built in function to read the csv file in the url
df = pd.read_csv(url)

#output object type
type(df)


# In[4]:


df.head()


# In[5]:


df


# In[6]:


df.loc[:,"CWDistance"]


# In[7]:


df.loc[:,["CWDistance", "Height", "Wingspan"]]


# In[8]:


df.loc[:9,["CWDistance", "Height", "Wingspan"]]


# In[9]:


df.loc[10:15]


# In[10]:


df.loc[:9, "CWDistance"]


# In[11]:


df.iloc[:4]


# In[12]:


df.iloc[1:5, 2:4]


# In[13]:


df.iloc[1:5, ["Gender", "Glasses"]]


# In[14]:


df.iloc[1:5, ["Gender", "GenderGroup"]]


# In[15]:


df.dtypes


# In[16]:


df.Gender,unique()


# In[17]:


df.Gender.unique()


# In[18]:


df.GenderGroup.unique()


# In[19]:


df.loc[:,["Gender", "GenderGroup"]]


# In[20]:


df.groupby(['Gender', 'GenderGroup']).size()

