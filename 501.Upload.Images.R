# Per caricare un'immagine da una cartella
setwd("D:Percorso_cartella")  ## 'setwd' --> set working directory
# Se invece metto "D:\Percorso_cartella" non funziona, quindi fare attenzione a '/' dopo 'D:'

img<-rast("NOME_FILE.ESTENSIONE")  ## rast() --> per importare l'immagine (raster data)
# La funzione 'rast()' è nel pacchetto 'terra'
# Su windows ricordare di aggiungere l'estensione alla fine perché la nasconde!!

# Per plottare soltanto una parte dell'immagine
# ext<-c(m_lon,M_lon,m_lat,M_lat)
# crop(nome,ext)


# imageRy
im.list() # This function produces a character vector of the names of files stored in the 'imageRy' package directory.
im.import() # This function imports a chosen image stored in the 'imageRy' package.
# im.plotRGB -->This function plots a RGB image from a SpatRaster object
