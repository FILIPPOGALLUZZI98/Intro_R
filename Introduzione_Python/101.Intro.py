# Python uses indentation to indicate a block of code
# Python will ignore string literals that are not assigned to a variable, you can add a
# multiline string (triple quotes) in your code, and place your comment inside it

# In Python, variables are created when you assign a value to it
# Variable names are case-sensitive
a=3
# Rules for Python name of variables: must start with a letter or the underscore character;
# cannot start with a number; can only contain alpha-numeric characters and underscores;
# cannot be any of the Python keywords.
# Python allows you to assign values to multiple variables in one line
a, b, c = 1, 2, 3
a = b = 1
# Normally, when you create a variable inside a function, that variable is local, and can only
# be used inside that function. To create a global variable inside a function, you can use 
# the 'global' keyword

# If you want to specify the data type of a variable, this can be done with casting
str(); int(); float(); complex()
type()  ## To get the type of a variable
len()  ## Per lunghezza di liste, array, stringhe, ...

# Python has a built-in module called random that can be used to make random numbers
import random as rn
rn.randrange(1, 10)

range()  ## Returns a sequence of numbers, starting from 0 by default, and 
  ## increments by 1 (by default), and ends at a specified number.

#################################################################################################################
#################################################################################################################
## STRINGS
# To check if a certain phrase or character is present in a string, we can use the keyword 'in'
# To check if a certain phrase or character is NOT present in a string, we can use the keyword 'not in'
# You can return a range of characters by using the slice syntax. Specify the start index and the end
# index, separated by a colon, to return a part of the string
a[2:5]  ## Get the characters from position 2 to position 5 (not included)
# Use negative indexes to start the slice from the end of the string
# To merge two strings use '+'

# We can combine strings and numbers by using the 'format()' method
a = 36
txt = "My name is John, and I am {}"
print(txt.format(a))
# The 'format()' method takes unlimited number of arguments, and are placed into the respective placeholders
# You can use index numbers {n} to be sure the arguments are placed in the correct placeholders
# To insert characters that are illegal in a string, use an escape character. An escape character is a
# backslash \ followed by the character you want to insert

# METHODS FOR STRIGS
upper()  ## Returns the string in upper case --> a.upper()
lower()  ## Returns the string in lower case --> a.lower()
strip()  ##  Removes any whitespace from the beginning or the end --> a.strip()
replace() ## Replaces a string with another string --> a.replace("A","B")
split()  ## Splits the string into substrings if it finds instances of the separator
capitalize()  ## Converts the first character to upper case
casefold()  ## Converts string into lower case
count()  ## Returns the number of times a specified value occurs in a string
find()  ## Searches the string for a specified value and returns the position of where it was found
index()  ## Searches the string for a specified value and returns the position of where it was found
title()	 ## Converts the first character of each word to upper case

#################################################################################################################
#################################################################################################################
## FUNCTIONS
# A function is a block of code which only runs when it is called. You can pass data,
# known as parameters, into a function. A function can return data as a result
# In Python a function is defined using the 'def' keyword
def funct(x, y, ...):
  argument

# To let a function return a value, use the 'return' statement
def funct(x,y,...):
  return F(x,y,...)  ## Espressione matematica

# To call a function, use the function name followed by parenthesis
funct(a, b, ...)







