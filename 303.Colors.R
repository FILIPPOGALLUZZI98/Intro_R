# Se vogliamo cambiare i colori della mappa di densità
cl<-colorRampPalette(c(“black”,”red”,”orange”,”yellow”))(100) 
# Devo usare le virgolette altrimenti i colori non vengono riconosciuti; 
# ho bisogno di un array dove mettere quali colori voglio utilizzare; 
# (100) serve per ottenere un gradiente tra un colore all’altro, se fosse (4) non avrei un gradiente,
# ma semplicemente un salto netto tra un colore e l’altro;
