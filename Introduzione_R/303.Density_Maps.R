# MAPPE DI DENSITA
# Se abbiamo un dataset con vari punti nello spazio e vogliamo passare ad una mappa di densità
density_map<-density(dataset)
# A questo punto non stiamo più lavorando con punti (o vettori) ma stiamo usando i pixel (raster)
# Se vogliamo sovrapporre la mappa dei punti a quella di densità (o qualsiasi altro plot)
points(dataset)

# Se vogliamo cambiare i colori della mappa di densità
cl<-colorRampPalette(c(“black”,”red”,”orange”,”yellow”))(100) 
# Devo usare le virgolette altrimenti i colori non vengono riconosciuti; 
# ho bisogno di un array dove mettere quali colori voglio utilizzare; 
# (100) serve per ottenere un gradiente tra un colore all’altro, se fosse (4) non avrei un gradiente,
# ma semplicemente un salto netto tra un colore e l’altro;
