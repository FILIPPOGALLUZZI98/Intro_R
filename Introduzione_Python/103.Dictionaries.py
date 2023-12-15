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













