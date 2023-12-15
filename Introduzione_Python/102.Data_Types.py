## LISTS
# Lists are used to store multiple items in a single variable
a=[...]
# It is also possible to use the 'list()' constructor when creating a new list
# List items are ordered, changeable, and allow duplicate values.
# List items are indexed, the first item has index [0]
# A list can contain different data type
# To know the index of an element
a.index(nome_elem)

# To change the value of a specific item, refer to the index number
a[4]="a"  ## Cambia il quarto elemento dal precedente ad "a"
# The 'insert()' method inserts an item at the specified index
a.insert(n, nuovo_elem)
# To add an item to the end of the list, use the 'append()' method
a.append(nuovo_elem)
# The 'remove()' method removes the specified item
a.remove(elemento)
# The 'pop()' method removes the specified index
a.pop(n)  ## Se lascio vuoto toglie l'ultimo
# The 'del' keyword can also delete the list completely
# The 'clear()' method empties the list
# List objects have a 'sort()' method that will sort the list alphanumerically, ascending, by default
# 'reverse = True' to sort the other way
# To make a copy of a list we use 'copy()'
# To concatenate two lists we use '+'

############################################################################################################
############################################################################################################
## TUPLES
# A tuple is a collection which is ordered and unchangeable
a=(...)
# Tuples are immutable, but you can convert the tuple into a list, change the list, and convert the 
# list back into a tuple

############################################################################################################
############################################################################################################
## SETS
# A set is a collection which is unordered and unindexed
# One can only remove or add elements, but not change them
# Duplicates are not allowed!
a={...}

############################################################################################################
############################################################################################################
## DICTIONARIES
# Dictionaries are used to store data values in key:value pairs.
# A dictionary is a collection which is ordered, changeable and do not allow duplicates
dict = {
  "chiave_1": "valore_1",
  "chiave_2": "valore_2",
  "chiave_3": numero}
# Se le variabili sono già state definite, allora posso inserirle senza "", altrimenti,
# se sono stringhe devo metterle
# Per conoscere la lunghezza 'len()'

# You can access the items of a dictionary by referring to its key name, inside square brackets
dict[chiave_1]  ## Si ottiene valore_1

# The 'keys()' method will return a list of all the keys in the dictionary -->dict.keys()
# The 'values()' method will return a list of all the values in the dictionary
# The 'items()' method will return each item in a dictionary, as tuples in a list
# To determine if a specified key is present in a dictionary use the 'in' keyword
# The 'update()' method will update the dictionary with the items from the given argument
dict.update({"chiave_1":"nuovo_valore_1"})
# If the item does not exist, the item will be added
# The 'pop()' method removes the item with the specified key name

# A dictionary can contain dictionaries, this is called nested dictionaries
# To access items from a nested dictionary, you use the name of the dictionaries, starting 
# with the outer dictionary
ndict["chiave_12"]["chiave_21"]









