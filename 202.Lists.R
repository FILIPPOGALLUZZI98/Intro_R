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



