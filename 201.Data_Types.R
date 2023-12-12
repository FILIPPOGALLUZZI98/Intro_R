# Un vettore è una lista di oggetti che sono dello stesso tipo
# Per creare un vettore usiamo 'c()'
a<-c(a,b,c)
# Per creare una sequenza di numeri usiamo ':'
a<-1:10






# Per conoscere la lunghezza del vettore usiamo 'lenght()'
# Per ordinare in ordine alfabetico o numerico gli item usiamo 'sort()'
# Per accedere agli elementi del vettore usiamo a[n] con n posizione
# Per accedere a più elementi
a[c(1,3)]  ## In questo caso il primo e il 3o elemento
# Per accedere a tutti gli elementi tranne uno selezionato usiamo i negativi
a[c(-1)]  ## Tutti tranne il primo
# Per cambiare un elemento
a[n]<-nuovo_elemento ## In posizione 'n'
# Per fare sequenced vectors allora usiamo 'seq()'
a<-seq(from=n, to=k, by=x)

#####################################################################################
#####################################################################################
# Una list può contenere diversi tipi di dati al suo interno
# una list è una collezione di dati ordinati e modificabili
a<-list()
# Come per i vettori, per accedere ad un elemento usiamo le '[]'
a[n]  ## Con 'n' posizione dell'oggetto
# Per assegnare un nuovo valore all'elemento 'n'
a[n]<-nuovo_valore
# Anche per le liste funziona la funzione 'lenght()'

# Per sapere se un certo elemento appartiene alla lista usiamo '%in%'
oggetto %in% a

# Per aggiungere un elemento alla fine della lista usiamo 'append()'
append(a, valore)  ## Questo lo aggiunge in automatico alla fine della lista
append(a, valore, after=n)  ## Questo lo aggiunge dopo la posizione 'n'
# Per rimuovere un elemento usiamo i numeri negativi (come per i vettori)
a<-a[-n]

# Per unire due liste usiamo 'c()'
c(a,b)  ## Con 'a' e 'b' due liste

#####################################################################################
#####################################################################################
# Una matrice può essere creata con la funzione 'matrix()'
a<-matrix(c("a","b","c","d","e","f"), nrow=2, ncol=2)

# Per specificare gli oggetti usiamo '[]'
a[n,m]  ## Dove il primo indice si riferisce alla riga ed il secondo alla colonna
# Per selezionare una riga o una colonna
a[n,]  ## Per selezionare una riga
a[,m]  ## Per selezionare una colonna
# Se voglio selezionare più di una riga o colonna
a[c(1,2,...,n),]  ## Per selezionare da 1 a n righe
a[,c(1,2,...,m)]  ## Per selezionare da 1 a m colonne

# Per rimuovere righe o colonne
a<-a[-c(n),]
a<-a[,-c(m)]

# Per conoscere la dimensione della matrice usiamo 'dim()'

#####################################################################################
#####################################################################################
# Rispetto alle matrici gli arrays possono avere più di una dimensione
# Gli array possono contenere solo un tipo di dato
# Per creare un array usiamo 'array()'
a<-array(c(1,2,3))

# Per array multidimensionali
a<-array(b,dim=c(3,4,3))

# Per accedere ad un valore usiamo '[]'
a[n]




















