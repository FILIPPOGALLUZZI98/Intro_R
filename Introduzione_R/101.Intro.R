# Per altre info "https://rspatial.org/intr/index.html"
# Il nome di una variabile deve iniziare con una lettera e può essere una combinazione di lettere, cifre, punto(.)
# e carattere (_). Se inizia con punto(.), non può essere seguito da una cifra. Un nome di variabile
# non può iniziare con un numero o (_). Parole riservate non possono essere utilizzati come variabili

dir()  ## Allows us to view all the files available in the directory
# ';' consente di fare due operazioni nella stessa riga
# To assign a value to a variable, use the '<-' sign
# R allows you to assign the same value to multiple variables in one line
a,b,c<-2; a<-b<-c<-2
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
class()  ## To check the data type of a variable
# You can convert from one type of number to another with the following functions:
as.numeric(); as.integer(); as.complex()

sqrt()  ## Returns the square root of a number
abs()  ## Returns the absolute value of a number
round(x,digits=2)  ## Arrotondamento
ceiling()  ## Rounds a number upwards to its nearest integer
floor()  ## Rounds a number downwards to its nearest integer, and returns the result

###########################################################################################
###########################################################################################
## STRINGS
# Generare vettore con lettere
name<-LETTERS[1:10]

# R will add a '\n' at the end of each line break. This is called an escape character, and the n character
# indicates a new line.
cat()  ## If you want the line breaks to be inserted at the same position as in the code
a<-"My name is Mark"
cat(a)

nchar()  ## To find the number of characters in a string
grepl()  ## To check if a character or a sequence of characters are present in a string
gsub("carattere_da_sost", "carattere_sostituito", "STRINGA")  ## Per sostituire caratteri di una stringa

# To insert characters that are illegal in a string, you must use an escape character
# An escape character is a backslash \ followed by the character you want to insert.
a <- "We are the so-called \"Vikings\", from the north."




