# Data Frames are data displayed in a format as a table
# Data Frames are special type of lists in which all the elements must have the same lenght
# Data Frames can have different types of data inside it. While the first column 
# can be character, the second and third can be numeric or logical. However, each
# column should have the same type of data.
# Un dataset è una collezione di dati

# Per creare una dataframe a partire da 3 vettori 'a', 'b', 'c'
data<-data.frame(
Variabile_1=a, Variabile_2=b, Variabile_3=c)
# In questo modo ottengo tre colonne con in cima il nome di ogni variabile

# Per ottenere informazioni sul dataset 
?XXX  ## Informazioni generali
dim(XXX)  ## Dimensione del dataset
ncol(XXX); nrow(XXX)  ## Per conoscere quante righe/colonne
names(XXX)  ## Nomi delle variabili
rownames(XXX)  ## Nomi di ogni riga 
colnames(XXX)  ## Nomi di ogni colonna 
summary(XXX)  ## Statistical summary dei dati
data(XXX)  ## Ci fa vedere il contenuto del dataset "XXX"
head(XXX)  ## Ci fa vedere la prima parte del dataset
tail(XXX)  ## Ci fa vedere l'ultima parte del dataset

#######################################################################################################
#######################################################################################################
# Per accedere alle colonne possiamo usare diversi modi
data[1]  ## Usando la posizione della colonna
##??## data[["Variabile_1"]]  ## Usando il nome della colonna
data$Variabile_2  ## Usando il nome della colonna

# Per aggiungere una nuova riga usiamo 'rbind()', con 'd' vettore della stessa lunghezza delle righe
data<-rbind(data, d)
# Per aggiungere una nuova colonna usiamo 'cbind()', con 'd' vettore della stessa lunghezza delle colonne
data<-cbind(data, Variabile_4=d)
# Per rimuovere una riga
data<-data[-c(n),]
# Per rimuovere una colonna
data<-data[,-c(n)]

# Per unire due o più dataframe
data_3<-rbind(data_1,data_2)  ## Verticalmente
data_3<-cbind(data_1,data_2)  ## Orizzontalmente

# To find the lowest or highest value in a set
min(AAA); max(AAA)
# To find the index position of the max and min value in the table
which.max(AAA); which.min(AAA) 
# Or even better, combine 'which.max()' and 'which.min()' with 'rownames()'
rownames(AAA)[which.max(AAA$nome_variabile)]
rownames(AAA)[which.min(AAA$nome_variabile)]

# Se dentro il dataset la variabile può assumere valori diversi ed io voglio selezionarne soltanto uno
# Supponiamo che il dataset 'A' contenga le variabili 'a' e 'b', 
# e che la varaiabile 'a' possa avere valori 0 e 1
B<-A[A$a==1] # in questo modo assegno a 'B' solamente i valori 1 della variabile 'a' nel pacchetto 'A'

#######################################################################################################
#######################################################################################################
# Per caricare dei dati da una cartella
setwd("D:Percorso_cartella")  ## 'setwd' --> set working directory
# Se invece metto "D:\Percorso_cartella" non funziona, quindi fare attenzione a '/' dopo 'D:'
# In R, the backslash is the “escape” symbol, which is followed by another symbol to indicate a special character
# Poi, per passare dal nome del file ad un vettore
a<-vect(nome_file)  ## La funzione è nel pacchetto 'terra'
a<-read.cvs(nome_file)  ## Per leggere file excel




