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

# Per fare una linea
plot(1:10, type="l")  ## In cui abbiamo usato la funzione per serie di numeri
# Grandezza linea
plot(a, type="l", lwd=2)
# Stile linea
plot(a, tupe="l", lty=3)
# 0 removes the line; 1 displays a solid line; 2 displays a dashed line; 3 displays a dotted line
# 4 displays a "dot dashed" line; 5 displays a "long dashed" line; 6 displays a "two dashed" line

# Per comparare due grafici usiamo la funzione 'points()' sotto al primo grafico
plot(a)
points(b)
# Per mostrare più di una linea usiamo 'lines()' sotto al primo grafico
line1 <- c(1,2,3,4,5,10)
line2 <- c(2,5,7,8,9,10)
plot(line1, type = "l", col = "blue")
lines(line2, type="l", col = "red")

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













