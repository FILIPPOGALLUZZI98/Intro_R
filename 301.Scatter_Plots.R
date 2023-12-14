# Per fare uno scatterplot usiamo la funzione 'plot()'
# Il primo parametro specifica la coordinata 'x', il secondo 'y'
plot(1,2)
# Per plottare più punti possiamo usare un vettore
plot(c(1,2,3,4,5),c(4,8,12,45,35))

# Nome Assi e Titolo
plot(a, main="TITOLO", xlab="NOME", ylab="NOME")
# Colore
plot(a, col="red")
# Grandezza
plot(a, cex=2)
# Forma
plot(a, pch=25)
# Posso anche usare la grandezza diversa dei punti, in base al loro valore
grandezza<-c(1,2,3,4)  ## Oppure anche una funzione di un vettore, come "grand<-1+ precip/500"
plot(a, cex=grandezza)  ## Imposto la grandezza variabile in base al valore del punto

# Per comparare due grafici a dispersione usiamo la funzione 'points()' sotto al primo grafico
plot(a)
points(b)
# Per mostrare più di una linea usiamo 'lines()' sotto al primo grafico
line1 <- c(1,2,3,4,5,10)
line2 <- c(2,5,7,8,9,10)
plot(line1, type = "l", col = "blue")
lines(line2, type="l", col = "red")

# Per aggiungere testo (per esempio etichette per ogni punto)
label=c("Elem_1","Elem_2","Elem_3")
text(a, label, pos="n")

# Per fare la legendaa
legend("topright, col='XXX')
# Se nella legenda voglio mostrare i cerchi variabili 
leg <- c(100, 250, 500, 1000)  ## Creo un vettore con le dimensioni standard
legend.psize <- 1+leg/500
legend("topright", legend=leg, pch=20, pt.cex=legend.psize, col='XXX', bg='XXX')


# Per fare una linea
plot(1:10, type="l")  ## In cui abbiamo usato la funzione per serie di numeri
# Grandezza linea
plot(a, type="l", lwd=2)
# Stile linea
plot(a, type="l", lty=3)
# 0 removes the line; 1 displays a solid line; 2 displays a dashed line; 3 displays a dotted line
# 4 displays a "dot dashed" line; 5 displays a "long dashed" line; 6 displays a "two dashed" line

# Per fare un poligono
polygon(a, col='XXX', border='XXX')  ## con 'a' vettore contenente coordinate dei vertici

########################################################################################################
########################################################################################################
# Mostrare due grafici nella stessa immagine accanto
par(mfrow=c(1,2)) 
# Dove il primo sta per le righe e il secondo per le colonne. 
plot(grafico1) 
plot(grafico2) 
# Con questo ottengo due grafici uno accanto all’altro.
# Se voglio chiudere i grafici
dev.off()

# Per produrre una matrice di scatterplots
pairs(a)
# https://statisticsglobe.com/r-pairs-plot-example/












