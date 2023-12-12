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
