# Per altre info "https://rspatial.org/intr/index.html"
# R è case sensitive
# Il nome di una variabile deve iniziare con una lettera e può essere una combinazione di lettere, cifre, punto(.)
# e carattere (_). Se inizia con punto(.), non può essere seguito da una cifra. Un nome di variabile
# non può iniziare con un numero o (_). Parole riservate non possono essere utilizzati come variabili

dir()  ## Allows us to view all the files available in the directory
# To assign a value to a variable, use the '<-' sign
# R allows you to assign the same value to multiple variables in one line
a,b,c<-2
a<-b<-c<-2
# ';' consente di fare due operazioni nella stessa riga
a<-1; b<-1
# You can also concatenate, or join, two or more elements, by using the 'paste()' function
a<-"Mark"
paste("My name is ",a)

# For randomly distributed numbers
runif(n, min = 0, max = 1)  ## 'n' is the number of numbers 
# For normally distributed numbers
r <- rnorm(n, mean=XXX, sd=XXX)
# If you run the functions above, you will get different numbers then the ones shown here
# To allow for exact reproduction of examples we want to assure that we take exactly the same random
# sample each time we run our code. To do that we use set.seed. This function initializes the random 
# number generator (to a specific point in an infinite but static sequence of numbers)
set.seed(n)  ## 'n' è arbitrario, ogni n fornisce una sequenza diversa

rainbow(n)  ## 'n' numero di colori da usare

###########################################################################################
###########################################################################################
## DATA TYPES
# We can use the 'class()' function to check the data type of a variable
# Basic data types: numeric; integer; complex, character (string); logical (boolean)
# You can convert from one type of number to another with the following functions:
as.numeric(); as.integer(); as.complex()

# The 'sqrt()' function returns the square root of a number
# The 'abs()' function returns the absolute value of a number
round(x,digits=2)  ## Arrotondamento
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
# Generare vettore con lettere
name<-LETTERS[1:10]

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




