# Per caricare un'immagine da una cartella
setwd("D:Percorso_cartella")  ## 'setwd' --> set working directory
# Se invece metto "D:\Percorso_cartella" non funziona, quindi fare attenzione a '/' dopo 'D:'

img<-rast("NOME_FILE.ESTENSIONE")  ## rast() --> per importare l'immagine (raster data)
# La funzione 'rast()' è nel pacchetto 'terra'
# Su windows ricordare di aggiungere l'estensione alla fine perché la nasconde!!
