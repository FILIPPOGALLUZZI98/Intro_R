# Data Frames are data displayed in a format as a table
# Data Frames are special type of lists in which all the elements must have the same lenght
# Data Frames can have different types of data inside it. While the first column 
# can be character, the second and third can be numeric or logical. However, each
# column should have the same type of data.

# Per creare una dataframe
data<-data.frame(
  Parametri=c("Parametro 1", "Parametro 2", "Parametro 3"), 
  Valore_1=c(10,20,50), 
  Valore_2=c(1,3,5))
data
summary(data)  ## Per Riassumere i dati 
dim(); ncol(); nrow()  ## Per conoscere quante righe/colonne

# Per accedere alle colonne possiamo usare diversi modi
data[1]  ## Usando la posizione della colonna
data[["Parametri"]]  ## Usando il titolo della colonna
data$Parametri  ## Usando il nome della colonna

# Per aggiungere una nuova riga usiamo 'rbind()'
data<-rbind(data, c("Parametro 4", 100, 10))
# Per aggiungere una nuova colonna usiamo 'cbind()'
data<-cbind(data, Valore_3=c(5, 10, 25, 50))
# Per rimuovere una riga
data<-data[-c(n),]
# Per rimuovere una colonna
data<-data[,-c(n)]

# Per unire due o più dataframe
data_3<-rbind(data_1,data_2)  ## Verticalmente
data_3<-cbind(data_1,data_2)  ## Orizzontalmente

#######################################################################################################
#######################################################################################################
# Per caricare dei dati da una cartella
setwd("D:Percorso_cartella")  ## 'setwd' --> set working directory
# Se invece metto "D:\Percorso_cartella" non funziona, quindi fare attenzione a '/' dopo 'D:'
# In R, the backslash is the “escape” symbol, which is followed by another symbol to indicate a special character
# Poi, per passare dal nome del file ad un vettore
a<-vect(nome_file)  ## La funzione è nel pacchetto 'terra'
a<-read.cvs(nome_file)  ## Per leggere file excel

# Un dataset è una collezione di dati
# Supponiamo di avere un dataset 'AAA'
# Per ottenere informazioni sul dataset 
?AAA  ## Informazioni generali
dim(AAA)  ## Dimensione del dataset
names(AAA)  ## Nomi delle variabili
rownames(AAA)  ## Nomi di ogni riga della prima colonna
colnames(AAA)  ## Nomi di ogni colonna della prima riga
summary(AAA)  ## Statistical summary dei dati
data(AAA)  ## Ci fa vedere il contenuto del dataset "A"
head(AAA)  ## Ci fa vedere la prima parte del dataset
tail(AAA)  ## Ci fa vedere l'ultima parte del dataset

# Per accedere ad una variabile
a<-AAA$nome_variabile
a<-AAA[[n]]  ## tra partentesi è indicata la posizone della variabile 

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






