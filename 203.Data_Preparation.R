## RESHAPE
# To rearrange data from a wide to a long form and vice versa

# Let's consider this example
dd <- read.csv('https://stats.idre.ucla.edu/stat/data/hsb2.csv')
head(dd); dim(dd)
d <- dd[1:3, c(1:2, 8:9)]  ## Prime tre righe e colonne 1,2,8,9

# To go to a long form, you need to provide an argument varying that indicates the variables
# that are combined into one new variable. v.names is the name of this newvariable
# Definisco una nuova variabile che contiene 'write' e 'math' (le variabili di interesse)
wvars <- c("write", "math")
x<-reshape(d, varying=wvars, v.names="score", direction = "long")
# 'x' contiene due nuove variabili: 'time' e 'score'
# 'score' contiene i valori delle variabili 'math' e 'writing' mentre la variabile
# 'time' definisce a quale delle due corrisponde lo 'score' (1==write, 2==math)
# Per cambiare nome
x <- reshape(d, varying=wvars, v.names="score", times=wvars, timevar = "subject", direction = "long")
# Per eliminare i nomi delle righe a sx
rownames(x)<-NULL
x

# To go from long to wide we need to use 'idvar' and 'timevar'. 'idvar' identifies the variables that
# identify a single case (e.g. a single person, or other observational unit). In contrast, 'timevar' 
# indicates the variable that has the identifiers that become variables in the wide format. The 
# remaining variable should have the values that match these new variables.
w <- reshape(x, idvar=c("id", "female"), timevar = "subject", direction = "wide")
# Note that w is identical to d, except for the last two column names that now have “score.” prepended
# to them. We can change that like this
cn <- colnames(w)
cn <- gsub("score.", "", cn)
colnames(w) <- cn
w

###########################################################################################################
###########################################################################################################
## MERGE





