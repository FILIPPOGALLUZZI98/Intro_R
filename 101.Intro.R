# Per altre info "https://rspatial.org/intr/index.html"
# R è case sensitive
# Il nome di una variabile deve iniziare con una lettera e può essere una combinazione di lettere, cifre, punto(.)
# e carattere (_). Se inizia con punto(.), non può essere seguito da una cifra. Un nome di variabile
# non può iniziare con un numero o (_). Parole riservate non possono essere utilizzati come variabili

dir()  ## Allows us to view all the files available in the directory
data()  ## VUOTO! ci fa vedere le descrizioni dei datasets contenuti dei vari pacchetti richiamati

# To assign a value to a variable, use the '<-' sign
# R allows you to assign the same value to multiple variables in one line
a,b,c<-2
a<-b<-c<-2

# ';' consente di fare due operazioni nella stessa riga
a<-1; b<-1

# You can also concatenate, or join, two or more elements, by using the 'paste()' function
a<-"Mark"
paste("My name is ",a)

# Sequenza di numeri
seq(from=x, to=y, by=n)

###########################################################################################
###########################################################################################
## DATA TYPES
# We can use the 'class()' function to check the data type of a variable
# Basic data types in R can be divided into the following types:
# numeric
# integer -> (1L, where the letter "L" declares this as an integer)
# complex -> (9 + 3i)
# character (string)
# logical (boolean) -> (TRUE or FALSE)
# You can convert from one type of number to another with the following functions:
as.numeric(); as.integer(); as.complex()

# The 'min()' and 'max()' functions can be used to find the lowest or highest number in a set
# The 'sqrt()' function returns the square root of a number
# The 'abs()' function returns the absolute value of a number
# The 'ceiling()' function rounds a number upwards to its nearest integer, and the 'floor()' function
# rounds a number downwards to its nearest integer, and returns the result

###########################################################################################
###########################################################################################
## STRINGS
# Strings are used for storing text. You can assign a multiline string to a variable
a<-"My name
is Mark"
# R will add a '\n' at the end of each line break. This is called an escape character, and the n character
# indicates a new line.
# If you want the line breaks to be inserted at the same position as in the code, use the 'cat()' function
a<-"My name is Mark"
cat(a)

# To find the number of characters in a string, use the 'nchar()' function
# Use the 'grepl()' function to check if a character or a sequence of characters are present in a string
# Per sostituire caratteri di una stringa
gsub("carattere_da_sost", "carattere_sostituito", "STRINGA")
# To insert characters that are illegal in a string, you must use an escape character
# An escape character is a backslash \ followed by the character you want to insert.
a <- "We are the so-called \"Vikings\", from the north."
# Note that auto-printing the str variable will print the backslash in the output. You can use the
# 'cat()' function to print it without backslash

###########################################################################################
###########################################################################################
## OPERATORS
# R divides the operators in the following groups: Arithmetic operators, Assignment operators, 
# Comparison operators, Logical operators, Miscellaneous operators.
# Arithmetic operators are used with numeric values to perform common mathematical operations
# +; -; *; /; ^; %% (remainder from division), %/% (integer division)
# Comparison operators are used to compare two values
# ==; !=; <; >; >=; <=
# Logical operators are used to combine conditional statements
# &	(logical AND operator); |	(logical OR operator); ! (logical NOT)
# Miscellaneous operators are used to manipulate data
# :	(creates a series of numbers in a sequence)
# %in%	(find out if an element belongs to a dataset)




