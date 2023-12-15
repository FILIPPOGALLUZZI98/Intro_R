# zoom(x) and clicking on the map twice --> To indicate where to zoom to
# sel(x) --> To save a spatial subset to a new object
# click(x) --> To interactively query a SpatRaster by clicking once or several times on a map plot


# Titolo e Assi
plot(x,  main="TITOLO", xlab="NOME", ylab="NOME", col=cl)

# Legenda
legend("topright, col='XXX')

# Per aggiungere testo (per esempio etichette per ogni punto)
label=c("Elem_1","Elem_2","Elem_3")
text(a, label, pos="n")

# Altre customizzazioni
plot(x, mar=XXX, plg=list(x="topright", title="XXX", bty = "o"))
# mar --> margini???
# plg --> 'plot legend' --> x= position; title; bty=???

# Per aggiungere una scala diversa da quella di default
plot(x, axes=FALSE)  ## To remove deafault axe
axis(1, at=c(nn,nn)); axis(1)  ## 1 si riferisce all'asse 'x'
axis(2, at=c(nn,nn)); axis(2)  ## axis(n) per mostrare l'asse sul grafico

# If you want to color a map it is probably easiest to use an attribute
plot(x, "Var", col=cl)
# You can request maps for multiple variables
plot(x, c("Var_1", "Var_2"), col=cl)

########################################################################################################
########################################################################################################
# Per fare uno scatterplot usiamo la funzione 'plot()'
# Il primo parametro specifica la coordinata 'x', il secondo 'y'
plot(1,2)
# Per plottare più punti possiamo usare un vettore
plot(c(1,2,3,4,5),c(4,8,12,45,35))

plot(a, cex=2, pch=25, col="colore")
# cex = Grandezza dei punti
# pch = Colore dei punti
# col = Colore dei punti
# Posso anche usare la grandezza diversa dei punti, in base al loro valore
grandezza<-c(1,2,3,4)  ## Oppure anche una funzione di un vettore, come "grand<-1+ precip/500"
plot(a, cex=grandezza)  ## Imposto la grandezza variabile in base al valore del punto

# Se nella legenda voglio mostrare figure variabili in base al valore 
leg <- c(100, 250, 500, 1000)  ## Creo un vettore con le dimensioni standard
legend.psize <- 1+leg/500
legend("topright", legend=leg, pch=20, pt.cex=legend.psize, col='XXX', bg='XXX')

########################################################################################################
########################################################################################################
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
perim()  # To get the perimeter of the polygon

########################################################################################################
########################################################################################################
# To add features on a map
plot(new_feature, add=TRUE)

# Mostrare due grafici nella stessa immagine accanto
par(mfrow=c(1,2)) 
# Dove il primo sta per le righe e il secondo per le colonne. 
plot(grafico1) 
plot(grafico2) 
# Con questo ottengo due grafici uno accanto all’altro.
# Se voglio chiudere i grafici
dev.off()

# Per comparare due grafici a dispersione usiamo la funzione 'points()' sotto al primo grafico
plot(a)
points(b)

# Per mostrare più di una linea usiamo 'lines()' sotto al primo grafico
line1 <- c(1,2,3,4,5,10)
line2 <- c(2,5,7,8,9,10)
plot(line1, type = "l", col = "blue")
lines(line2, type="l", col = "red")

# Per produrre una matrice di scatterplots
pairs(a)
# https://statisticsglobe.com/r-pairs-plot-example/













