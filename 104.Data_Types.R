# Un vettore è una lista di oggetti che sono dello stesso tipo
a<-c(1,2,3)

# Una lista è una collezione di dati ordinati e modificabili
# Una lista può contenere diversi tipi di dati al suo interno
a<-list("a",1,"abc",10)

# Matrici
a<-matrix(c("a","b","c","d","e","f"), nrow=n, ncol=m)
# Oppure a partire da una lista/vettore/array
A<-matrix(a, nrow=n, ncol=m)

# Rispetto alle matrici gli arrays possono avere più di una dimensione
# Gli array possono contenere solo un tipo di dato
a<-array(c(1,2,3))

#####################################################################################
#####################################################################################
# Per conoscere la lunghezza usiamo 'lenght()'
# Per ordinare in ordine alfabetico o numerico gli item usiamo 'sort()'
# Per sapere se un certo elemento appartiene al datatype usiamo '%in%'
3 %in% a
# Per accedere agli elementi usiamo a[n] con n posizione
# Per accedere a più elementi
a[c(1,3)]  ## In questo caso il primo e il terzo elemento
# Per accedere a tutti gli elementi tranne uno selezionato usiamo i negativi
a[c(-1)]  ## Tutti tranne il primo

# Per cambiare un elemento
a[n]<-nuovo_elemento ## In posizione 'n'
# Per aggiungere un elemento usiamo 'append()'
append(a, valore)  ## Questo lo aggiunge in automatico alla fine
append(a, valore, after=n)  ## Questo lo aggiunge dopo la posizione 'n'
# Per rimuovere un elemento usiamo i numeri negativi
a<-a[-n]

# Matrici
a[n,m]  ## Per selezionare un elemento (riga, colonna)
a[n,]  ## Per selezionare una riga
a[,m]  ## Per selezionare una colonna
# Se voglio selezionare più di una riga o colonna
a[c(1,2,...,n),]  ## Per selezionare da 1 a n righe
a[,c(1,2,...,m)]  ## Per selezionare da 1 a m colonn
# Per rimuovere righe o colonne
a<-a[-c(n),]
a<-a[,-c(m)]

#####################################################################################
#####################################################################################
# Per fare sequenced vectors allora usiamo 'seq()'
a<-seq(from=n, to=k, by=x)

# Per unire due liste usiamo 'c()'
c(a,b)  ## Con 'a' e 'b' due liste

# Per array multidimensionali
a<-array(b,dim=c(3,4,3))





















