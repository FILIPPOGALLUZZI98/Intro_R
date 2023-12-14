## RESHAPE
# This function reshapes a data frame between ‘wide’ format (with repeated measurements in 
# separate columns of the same row) and ‘long’ format (with the repeated measurements in separate rows)

reshape(data, varying=XXX, v.names="XXX", times=XXX, timevar = "XXX", direction = "XXX")
# data--> data frame
# varying--> names of sets of variables in the wide format that correspond to single variables in long format
# (‘time-varying’). This is canonically a list of vectors of variable names, but it can optionally be a matrix
# of names, or a single vector of names. In each case, when direction = "long", the names can be replaced by 
# indices which are interpreted as referring to names(data)
# v.names--> names of variables in the long format that correspond to multiple variables in the wide format
# times--> the values to use for a newly created timevar variable in long format
# timevar--> the variable in long format that differentiates multiple records from the same group or individual
# If more than one record matches, the first will be taken (with a warning)

###########################################################################################################
###########################################################################################################
## MERGE
# Se abbiamo due dataframe con dati che rappresentano gli stessi casi, questi
# dataframe possono esseere uniti insieme
ab<-merge(a, b, bu="nome_var")

# Possiamo anche aggiungere 'all.x' o 'all.y': if TRUE, then extra rows (columns) will be added to
# the output, one for each row in x that has no matching row in y. These rows will
# have NAs in those columns that are usually filled with values from y. The default is
# FALSE, so that only rows with data from both x and y are included in the output.

###########################################################################################################
###########################################################################################################
##  ESEMPIO 1 ---> Reshape Da "largo" a "lungo"
dd <- read.csv('https://stats.idre.ucla.edu/stat/data/hsb2.csv')
head(dd); dim(dd)
# Abbiamo 11 colonne con i nomi(id, female, race, ses, ...) e 200 righe (valori)
# Per semplicità scegliamo soltanto una parte del dataset
d <- dd[1:3, c(1:2, 8:9)]  ## Prime tre righe e colonne 1,2,8,9
# Questo è un dataset 'largo'. Per passare ad un dataset 'lungo' allora vogliamo incolonnare due variabili
# Scegliamo 'write' e 'math' e creiamo un vettore con queste due nuove variabili
nvect<-c("write", "math")
# In questo caso vogliamo che le variabili 'math' e 'write' siano incolonnate una sopra l'altra
# Quindi su 'varying' mettiamo la nuova variabile e la chiamiamo 'score'. Dobbiamo anche specificare
# qual'è la direzione che vogliamo usare, in questo caso 'long'
x <- reshape(d, varying=nvect, v.names="score", direction = "long")
# Otteniamo così una lista con, al posto delle variabili 'math' e 'write', due nuove variabili
# 'time' e 'score'. Sotto a 'score' ci sono i valori delle due variabili; sotto 'time' ci sono 
# i valori per identificare a quale variabile corrisponde (1=write, 2=math)
# Per cambiare nome alla variabile 'time' e per avere, al posto di 1/2 i nomi delle variabili
# dobbiamo mettere al posto di 'times' il vettore con le due variabili e al posto di 'timevar' il nome
x <- reshape(d, varying=nvect, v.names="score", times=nvect, timevar = "subject", direction = "long")
# Le righe hanno anche, a sx, il nome di identificazione, per toglierlo
rownames(x)<-NULL

###########################################################################################################
###########################################################################################################
##  ESEMPIO 2 ---> Reshape Da "lungo" a "largo"
# To go from long to wide we need to use 'idvar' and 'timevar'. 'idvar' identifies the variables that identify
# a single case. In contrast, 'timevar' indicates the variable that has the identifiers that become variables in
# the wide format. The remaining variable should have the values that match these new variables
w <- reshape(x, idvar=c("id", "female"), timevar = "subject", direction = "wide")
w
# Note that w is identical to d, except for the last two column names that now have 'score.' prependend to them
# To change it
cn <- colnames(w)
cn <- gsub("score.", "", cn)
colnames(w) <- cn
w
# A questo punto w=d, siamo tornati al caso di partenza



