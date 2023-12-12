# Data Frames are data displayed in a format as a table
# Data Frames can have different types of data inside it. While the first column 
# can be character, the second and third can be numeric or logical. However, each
# column should have the same type of data.

# Per creare una tabella
tab<-data.frame(
  Parametri=c("Parametro 1", "Parametro 2", "Parametro 3"), 
  Valore_1=c(10,20,50), 
  Valore_2=c(1,3,5))
tab
summary(tab)  ## Per Riassumere i dati 
dim(); ncol(); nrow()  ## Per conoscere quante righe/colonne

# Per accedere alle colonne possiamo usare diversi modi
tab[1]  ## Usando la posizione della colonna
tab[["Parametri"]]  ## Usando il titolo della colonna
tab$Parametri  ## Usando il nome della colonna

# Per aggiungere una nuova riga usiamo 'rbind()'
tab<-rbind(tab, c("Parametro 4", 100, 10))
# Per aggiungere una nuova colonna usiamo 'cbind()'
tab<-cbind(tab, Valore_3=c(5, 10, 25, 50))
# Per rimuovere una riga
tab<-tab[-c(n),]
# Per rimuovere una colonna
tab<-tab[,-c(n)]

# Per unire due o più tabelle
tab_3<-rbind(tab_1,tab_2)  ## Verticalmente
tab_3<-cbind(tab_1,tab_2)  ## Orizzontalmente






