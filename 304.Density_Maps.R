# MAPPE DI DENSITA
# Se abbiamo un dataset con vari punti nello spazio e vogliamo passare ad una mappa di densità
density_map<-density(dataset)
# A questo punto non stiamo più lavorando con punti (o vettori) ma stiamo usando i pixel (raster)
# Se vogliamo sovrapporre la mappa dei punti a quella di densità (o qualsiasi altro plot)
points(dataset)
