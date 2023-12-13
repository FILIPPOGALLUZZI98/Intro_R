## RESHAPE
reshape()
# This function reshapes a data frame between ‘wide’ format (with repeated measurements in 
# separate columns of the same row) and ‘long’ format (with the repeated measurements in separate rows)


## Arguments
# data--> data frame
# varying--> names of sets of variables in the wide format that correspond to single variables in long format
# (‘time-varying’). This is canonically a list of vectors of variable names, but it can optionally be a matrix
# of names, or a single vector of names. In each case, when direction = "long", the names can be replaced by 
# indices which are interpreted as referring to names(data)
# v.names--> names of variables in the long format that correspond to multiple variables in the wide format
# timevar--> the variable in long format that differentiates multiple records from the same group or individual
# If more than one record matches, the first will be taken (with a warning)
# idvar--> names of one or more variables in long format that identify multiple records from the same group/individual
# ids--> the values to use for a newly created idvar variable in long format
# times--> the values to use for a newly created timevar variable in long format

###########################################################################################################
###########################################################################################################
# Let's consider this example
dd <- read.csv('https://stats.idre.ucla.edu/stat/data/hsb2.csv')
head(dd); dim(dd)
# Abbiamo 11 colonne con i nomi(id, female, race, ses, ...) e 200 righe (valori)
# Per semplicità scegliamo soltanto una parte del dataset
d <- dd[1:3, c(1:2, 8:9)]  ## Prime tre righe e colonne 1,2,8,9

# Supponiamo di voler incolonnare insieme due variabili 'math' e 'writing'
# Definisco una nuova variabile che contiene 'write' e 'math' 
wvars <- c("write", "math")
x<-reshape(d, varying=wvars, v.names="score", direction = "long")
# 'varying' è l'argomento che indica quali variabili voglio unire
# 'v.names' è il nome che do a questa nuova variabile formata dall'unione
# 'direction' è la direzione lungo cui voglio unire
# 'x' contiene due nuove variabili: 'time' e 'score'
# 'time' definisce a quale delle due corrisponde lo 'score' (1==write, 2==math)
# Per cambiare nome a 'time'
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




