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










