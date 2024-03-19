# zoom(x) and clicking on the map twice --> To indicate where to zoom to
# sel(x) --> To save a spatial subset to a new object
# click(x) --> To interactively query a SpatRaster by clicking once or several times on a map plot


#############################################################################################################################
####  SCATTER PLOTS  ######################################################################################################
plot(x, 
     pch = 10,
     cex = 0.5,
     col = "red",
     main = "Titolo",
     xlab = "Asse x"
     ylab = "Asse y",
     bty = "o",
     mar=XXX,  ## Margini
     plg=list(x="topright"))  ## Plot Legend

# Posso anche usare la grandezza diversa dei punti, in base al loro valore
grandezza<-c(1,2,3,4)  ## Oppure anche una funzione di un vettore, come "grand<-1+ precip/500"
plot(a, cex=grandezza)  ## Imposto la grandezza variabile in base al valore del punto

# Per aggiungere testo (per esempio etichette per ogni punto)
label=c("Elem_1","Elem_2","Elem_3")
text(a, label, pos="n")

# Legenda
legend("topright, col='XXX')
# Se nella legenda voglio mostrare figure variabili in base al valore 
leg <- c(100, 250, 500, 1000)  ## Creo un vettore con le dimensioni standard
legend.psize <- 1+leg/500
legend("topright", legend=leg, pch=20, pt.cex=legend.psize, col='XXX', bg='XXX')

# Per aggiungere una scala diversa da quella di default
plot(x, axes=FALSE)  ## To remove deafault axe
axis(1, at=c(nn,nn)); axis(1)  ## 1 si riferisce all'asse 'x'
axis(2, at=c(nn,nn)); axis(2)  ## axis(n) per mostrare l'asse sul grafico


#############################################################################################################################
####  LINES, POLYGONS  ######################################################################################################
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

# Per cercare il centro di un poligono A
centr<-centroids(A)
points(centr, cex=6, pch=20, col='white')


#### PIE CHART  ####################################################################################################
# Per fare un grafico a torta uso la funzione 'pie()'
x<-c(10,20,30,40)
pie(x)
# The size of each pie is determined by comparing the value with all the other values, 
# by using this formula: the value divided by the sum of all values: x/sum(x)

# Di default il grafico parte dall'asse-x e va in senso antioriario
# Per cambiare l'angolo di partenza 'init.angle'
pie(x, init.angle=90)

# Per aggiungere i nomi negli spicchi basta usare 'label'
label_1=c("Variabile_1","Variabile_2","Variabile_3")
pie(x, label=label_1, main="TITOLO GRAFICO")
# Use the label parameter to add a label to the pie chart, and use the main parameter to add a header

# Per cambiare il colore
cl=c("red", "blue", "green")
pie(x, col=col)

# Per aggiungere una legenda
pie(x, label=label_1)
legend("bottomright", label_1, fill = cl)
# bottomright, bottom, bottomleft, left, topleft, top, topright, right, center


#############################################################################################################################
#### BAR CHART  ####################################################################################################
# Bar charts can be displayed horizontally or vertically
# The height or length of the bars are proportional to the values they represent
x<-c("A","B","C","D")
y<-c(2,4,6,8)
barplot(y, names.arg=x)

# If you want the bars to be displayed horizontally instead of vertically, use 'horiz=TRUE'
barplot(y, names.arg=x, horiz=TRUE)

# To change the bar texture, use the 'density' parameter
barplot(y, names.arg=x, density=10)

# Use the 'width' parameter to change the width of the bars:
barplot(y, names.arg=x, width=c(1,2,3,4))


#############################################################################################################################
#### HISTOGRAMS  ####################################################################################################
hist(x,
breaks = 10, 
freq = FALSE,
col = "red", 
main = "Titolo",
xlab = "Asse x",
ylab = "Asse y")


#############################################################################################################################
####  OVERLYING AND COMPARING  ####################################################################################################
# Mostrare due grafici nella stessa immagine accanto
par(mfrow=c(1,2)) 
# Dove il primo sta per le righe e il secondo per le colonne. 
plot(grafico1) ; plot(grafico2) 
# Con questo ottengo due grafici uno accanto all’altro
# Se voglio chiudere i grafici
dev.off()

# Per comparare due grafici a dispersione usiamo la funzione 'points()' sotto al primo grafico
plot(a)
points(b)

# Overlying charts (per esempio su un istogramma)
curve(dnorm(x, mean(dataset), sd = sd(dataset)),
col = "red",
lwd = 2,
add = TRUE)

# Per mostrare più di una linea usiamo 'lines()' sotto al primo grafico
line1 <- c(1,2,3,4,5,10)
line2 <- c(2,5,7,8,9,10)
plot(line1, type = "l", col = "blue")
lines(line2, type="l", col = "red")

# kernell density estimator
lines(density(dataset), col ="red", lwd = 2, adjust = 3)  ## adjust ??

# Rug
rug(dataset, lwd = 2, col = "red")

# Per produrre una matrice di scatterplots
pairs(a)


#############################################################################################################################
####  DENSITY MAPS  ####################################################################################################
# Se abbiamo un dataset con vari punti nello spazio e vogliamo passare ad una mappa di densità
density_map<-density(dataset)
# A questo punto non stiamo più lavorando con punti (o vettori) ma stiamo usando i pixel (raster)
# Se vogliamo sovrapporre la mappa dei punti a quella di densità (o qualsiasi altro plot)
points(dataset)

# Se vogliamo cambiare i colori della mappa di densità
cl<-colorRampPalette(c("black","red","orange","yellow"))(100) 
# Devo usare le virgolette altrimenti i colori non vengono riconosciuti; 
# ho bisogno di un array dove mettere quali colori voglio utilizzare; 
# (100) serve per ottenere un gradiente tra un colore all’altro, se fosse (4) non avrei un gradiente,
# ma semplicemente un salto netto tra un colore e l’altro;









