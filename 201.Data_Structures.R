# Un vettore è una lista di oggetti che sono dello stesso tipo
a<-c(1,2,3)
b<-c("può", "contenere", "solo", "stringhe")
# Per fare sequenced vectors allora usiamo 'seq()'
a<-seq(from=n, to=k, by=x)

# Una lista è una collezione di dati ordinati e modificabili
# Una lista può contenere diversi tipi di dati al suo interno
a<-list("a",1,"abc",10)
# Per unire due liste usiamo 'c()'
c(a,b)  ## Con 'a' e 'b' due liste

# Gli array possono avere più di una dimensione ma possono contenere solo un tipo di dato
a<-array(c(1,2,3))  ## A partire da un vettore 'c(1,2,3)'
a<-array(b,dim=c(2,3,4))  ## Dove 'b' è un vettore, c(2,3,4) indica le dimensioni
# Ovviamente dim(b) deve essere uguale a 2x3x4

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

# Per accedere agli elementi usiamo a[n] con n posizione
# Nel caso di un array multidimensionale a[n,m,k,...]
# Per accedere a più elementi
a[c(1,3)]  ## In questo caso il primo e il terzo elemento
# Per accedere a tutti gli elementi tranne uno selezionato usiamo i negativi
a[c(-1)]  ## Tutti tranne il primo
# Oppure
a[c(1,3:6)]  ## Tutti tranne il 2
# Indexing lists can be a bit confusing as you can both refer to the elements of the list,
# or the elements of the data (perhaps a matrix) in one of the list elements. There's a 
# difference betwwen double brackets: a[n] and a[[n]] are different!!

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





















