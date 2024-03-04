# NumPy è una libreria Python usata per lavorare con gli array
# The array object in NumPy is called nparray
# NumPy arrays are stored at one continuous place in memory unlike lists, 
# so processes can access and manipulate them very efficiently
import numpy as np

# To create an array
a = np.array([1, 2, 3, 4, 5])

# Più dimensioni
a = np.array([1,2,3,...], [1,2,3,...], [], ...)
a.ndim  ## Restituisce la dimensione dell'array

# Per accedere ad un elemento di un array 1-D(parte da 0)
a_0=a[0]
# Per dimensioni superiori separiamo con una virgola
a_0_1=a[0,1]
# Possiamo anche usare il negative indexing (-1 è l'ultimo)
a_0_n=a[0,-1]

# Slicing è usato per selezionare gli elementi tra due incidi indicati
# [start:end:step]
b=a[3:8:2] --> restituisce a[3], a[5], a[7]
# Per gli elementi multidimensionali
b=a[1, 1:4]









