# Se sto usando Colab mi serve Montaggio di Google Drive
import os, sys
from google.colab import drive
drivedir='/content/drive'
drive.mount(drivedir)
os.chdir(drivedir)
datadir=drivedir+'/MyDrive/Cartella_Dati'
ds=xr.open_dataset(datadir+'file_dati')



# Se ci sono più file con nomi silimi in cui
# cambia solo una cifra allora posso usare *:
ds=xr.open_mfdataset(datadir+'/1parte_comune*2parte_comune.nc',combine='nested', concat_dim='ens',decode_times=False)

# Nei casi in cui ci sono più file da caricare:
filename={}
for i in ['nome1','nome2','nome3','nome4','nome5','nome5']:
  filename[i]='/1parte_comune'+i+'2parte_comune.nc'

for i in ['nome1','nome2','nome3','nome4','nome5','nome5']:
  ds_file1=xr.open_dataset(datadir+filename['nome1'])





# STUDIARE DATASET VARI (Esempio 'Iris dataset)
# The data 'Iris dataset' is included in scikit-learn in the dataset 'module'
# The iris object that is returned by load_iris is a Bunch object, which is very similar
# to a dictionary. It contains keys and values
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from sklearn.datasets import load_iris
iris_dataset = load_iris()

# Analizziamo quali sono le 'keys' del dizionario
print(iris_dataset.keys())
# '.keys()' restituisce una lista delle chiavi dell'oggetto

# Usando format()
print("Keys of iris_dataset: \n{}".format(iris_dataset.keys()))
# Quindi sotto alla scritta 'Keys of iris_dataset:' ottengo, al posto 
# delle {} la lista delle chiavi
# Otteniamo keys(['target_names', 'feature_names', 'DESCR', 'data', 'target']

# Vogliamo vedere 'DESCR'
print(iris_dataset['DESCR'][:193] + "\n...")
# con 'iris-dataset['DESCR']' selezioniamo la chiave che vogliamo analizzare
# con '[:193]' stiamo selezionando soltanto i primi 193 caratteri

# Se vogliamo vedere 'target_names'
print("Target Names:{}".format(iris_dataset['target_names']))
# Al posto di {} inserisco, grazie a '.format()' la chiave 'target_names'

# Vogliamo vedere 'feature_names'
print("Feature Names: \n{}".format(iris_dataset['feature_names']))

# Per vedere che tipo di dato è contenuto nel dataset
print("Type of data: {}".format(type(iris_dataset['data'])))
print("Shape of data: {}".format(iris_dataset['data'].shape))
# We see that the array contains measurements for 150 different flowers. Remember
# that the individual items are called samples in machine learning, and their properties
# are called features. The shape of the data array is the number of samples multiplied by
# the number of features.

# Se vogliamo vedere una sola parte del dataset basta selezionare gli elementi
# da 0 a 5 'iris_dataset['data'][:5]', usando sempre la funzione format()
print("First five columns of data:\n{}".format(iris_dataset['data'][:5]))

# Infine, le specie sono codificate con numeri da 0 a 2:
print("Target:\n{}".format(iris_dataset['target']))
# 0 means setosa, 1 means versicolor, and 2 means virginica



