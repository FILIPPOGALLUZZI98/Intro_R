# Per caricare dei dati da una cartella
setwd("C:Percorso cartella")
# 'setwd' --> set working directory
# Oppure per cambiare la cartella basta andare 
# su File/Change nella toolbar (in alto)

#######################################################################################################
#######################################################################################################
# Se all’interno di un dataset sono presenti variabili possiamo richiamarle usando il simbolo del dollaro
a<-nome_dataset$nome_variabile
#oppure
a<-nome_dataset[[1]]
# tra partentesi è indicata la posizone della variabile all'interno del dataset

# Se dentro il dataset la variabile può assumere valori diversi ed io
# voglio selezionarne soltanto uno
# Supponiamo che il dataset 'A' contenga le variabili 'a' e 'b', 
# e che la varaiabile 'a' possa avere valori 0 e 1
B<-A[A$a==1] # in questo modo assegno a 'B' solamente i valori 1 della variabile 'a' nel pacchetto 'A'

#######################################################################################################
#######################################################################################################
# Se voglio trovare i nomi dei file all'interno di una cartella (o un pacchetto, per esempio 'sdm')
library(sdm)
nome_file<-system.file("external/nome.shp",package="dsm")
# Poi, per passare dal nome del file ad un vettore
a<-vect(nome_file) # la funzione è nel pacchetto 'terra'

