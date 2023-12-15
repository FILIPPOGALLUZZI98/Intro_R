# Vettori: In R, tutti i valori sono considerati come vettori un array uni-dimensionale con n valori 
# di un certo tipo. Anche un singolo numero è un vettore di lunghezza 1
# Un vettore è una lista di oggetti che sono dello STESSO TIPO
a<-c(1,2,3,...)
# Per fare sequenced vectors allora usiamo 'seq()'
a<-seq(from=n, to=k, by=x)

# Matrici: sono array bi-dimensionali che contengono oggetti dello stesso tipo
a<-c("a","b","c","d","e","f")
A<-matrix(a, nrow=3, ncol=2)  ## Riempimento a partire dalle colonne; Per partire dalle righe
# bisogna inserire 'byrow=TRUE'
a%*%b	 ## Matrix multiplication
# Array: possono avere più di una dimensione ma possono contenere solo un tipo di dato
a<-array(b,dim=c(2,3,4))  ## Dove 'b' è un vettore, c(2,3,4) indica le dimensioni
# Ovviamente dim(b)=2x3x4

# Liste: è una collezione di dati ordinati e modificabili
# Una lista può contenere diversi tipi di dati al suo interno (anche vettori o matrici)
a<-list("a",1,"abc",10,A_matrix)
# Per unire due liste usiamo 'c()'
c(a,b)  ## Con 'a' e 'b' due liste

#####################################################################################
#####################################################################################
lenght()  ## Per conoscere la lunghezza
sort()  ## Per ordinare in ordine alfabetico o numerico gli item
%in%  ## Per sapere se un certo elemento appartiene al datatype 

# Se vogliamo unire due vettori per colonne/righe
A<-cbind(a,b); B<-rbind(a,b)

# Per ottenere gli elementi in un vettore
a[n]  ## Con 'n' posizione
# Per ottenere più di un elemento
a[n:m]  ## In questo caso da 'n' ad 'm'
a[c(1,4:8)]  ## In questo caso tutti tranne 2 e 3
# Per accedere a tutti gli elementi tranne uno selezionato usiamo i negativi
a[c(-1)]  ## Tutti tranne il primo

# Per ottenere gli elementi in una matrice o di array multidimensionale 
a[n,m]  ## Matrice
a[n,m,k,...]  ## Array
# Per ottenere elementi multipli
a[c(n,m), c(k,j), c(l,m,n), ...]  ## Con n, l, m, k, ... posizione degli elementi
a[n, ,m]  ## Per selezionare una dimensione intera (nel caso di un 3-array)
# Se voglio selezionare più di una dimensione
a[m, k, c(1,2,...,n),]  ## Per selezionare da 1 a n righe

# Per ottenere gli elementi in una lista
# In questo caso è più complicato perché le liste possono contenere elementi di tipo diverso
# Esempio:
m <- matrix(1:9, nrow=3, ncol=3, byrow=TRUE)
colnames(m) <- c('a', 'b', 'c')
e <- list(list(1:3), c('a', 'b', 'c', 'd'), m)
# e[3] returns a list (of length 1), but e[[3]] returns what is inside that list element (a matrix in this case)


# Per aggiungere un elemento usiamo 'append()'
append(a, valore)  ## Questo lo aggiunge in automatico alla fine
append(a, valore, after=n)  ## Questo lo aggiunge dopo la posizione 'n'

# Per rimuovere un elemento usiamo i numeri negativi
a<-a[-n]
# Per rimuovere righe o colonne
a<-a[-c(n),]
a<-a[,-c(m)]


# Se vogliamo applicare una funzione su righe o colonne di un array/matrice usiamo 'apply()'
apply(X, MARGIN, FUN, simplify=TRUE)
# X è l'array o la matrice
# MARGIN è l'indice che indica se la applico sulle righe o colonne; per esempio, per una matrice, MARGIN->1 indica
# le righe, MARGIN->2 indica le colonne; per un array posso indicare la seconda e la terza dim MARGIN->c(2,3); se 
# le dimensioni hanno un nome allora posso usare MARGIN->c("nome_1", "nome_2", ...)
# FUN è la funzione che voglio applicare alle dimensioni








