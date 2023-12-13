# Un vettore è una lista di oggetti che sono dello stesso tipo
a<-c(1,2,3)
b<-c("può", "contenere", "solo", "stringhe")
# Per fare sequenced vectors allora usiamo 'seq()'
a<-seq(from=n, to=k, by=x)

# Gli array possono avere più di una dimensione ma possono contenere solo un tipo di dato
a<-array(c(1,2,3))  ## A partire da un vettore 'c(1,2,3)'
a<-array(b,dim=c(2,3,4))  ## Dove 'b' è un vettore, c(2,3,4) indica le dimensioni
# Ovviamente dim(b) deve essere uguale a 2x3x4

# Una lista è una collezione di dati ordinati e modificabili
# Una lista può contenere diversi tipi di dati al suo interno
a<-list("a",1,"abc",10)
# Per unire due liste usiamo 'c()'
c(a,b)  ## Con 'a' e 'b' due liste

# Matrici
a<-matrix(c("a","b","c","d","e","f"), nrow=n, ncol=m)
# Oppure a partire da una lista/vettore/array
A<-matrix(a, nrow=n, ncol=m)

#####################################################################################
#####################################################################################
# OPERAZIONI SU VETTORI, ARRAY, LISTE
# Per conoscere la lunghezza usiamo 'lenght()'
# Per ordinare in ordine alfabetico o numerico gli item usiamo 'sort()'
# Per sapere se un certo elemento appartiene al datatype usiamo '%in%'
3 %in% a
# Per accedere agli elementi usiamo a[n] con n posizione
# Nel caso di un array multidimensionale a[n,m,k,...]
# Per accedere a più elementi
a[c(1,3)]  ## In questo caso il primo e il terzo elemento
# Per accedere a tutti gli elementi tranne uno selezionato usiamo i negativi
a[c(-1)]  ## Tutti tranne il primo
# Per cambiare un elemento
a[n]<-nuovo_elemento ## In posizione 'n'
a[n,m,k,...]<-nuovo_elemento  ## Per array multidimensionali
# Per aggiungere un elemento usiamo 'append()'
append(a, valore)  ## Questo lo aggiunge in automatico alla fine
append(a, valore, after=n)  ## Questo lo aggiunge dopo la posizione 'n'
# Per rimuovere un elemento usiamo i numeri negativi
a<-a[-n]

# OPERAZIONI SU MATRICI
a[n,m]  ## Per selezionare un elemento (riga, colonna)
a[n,]  ## Per selezionare una riga
a[,m]  ## Per selezionare una colonna
# Se voglio selezionare più di una riga o colonna
a[c(1,2,...,n),]  ## Per selezionare da 1 a n righe
a[,c(1,2,...,m)]  ## Per selezionare da 1 a m colonn
# Per rimuovere righe o colonne
a<-a[-c(n),]
a<-a[,-c(m)]
a%*%b	 ## Matrix multiplication

#######################################################################################################
#######################################################################################################
# Per caricare dei dati da una cartella
setwd("D:Percorso_cartella")  ## 'setwd' --> set working directory
# Se invece metto "D:\Percorso_cartella" non funziona, quindi fare attenzione a '/' dopo 'D:'
# In R, the backslash is the “escape” symbol, which is followed by another symbol to indicate a special character
# Poi, per passare dal nome del file ad un vettore
a<-vect(nome_file)  ## La funzione è nel pacchetto 'terra'

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





















