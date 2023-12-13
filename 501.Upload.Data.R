# Per caricare dei dati da una cartella
setwd("D:Percorso_cartella")  ## 'setwd' --> set working directory
# Se invece metto "D:\Percorso_cartella" non funziona, quindi fare attenzione a '/' dopo 'D:'
# In R, the backslash is the “escape” symbol, which is followed by another symbol to indicate a special character

# Poi, per utilizzare i dati devo trasformarli in un tipo di dato che R può interpretare
# SU WINDOWS RICORDARE DI AGGIUNGERE L'ESTENSIONE PERCHE LA NASCONDE!!
a<-read.cvs(nome_file.ext)  ## Per leggere file excel
a<-vect(nome_file.ext)  ## La funzione è nel pacchetto 'terra'
img<-rast("nome_file.ext")  ## rast() è nel pacchetto 'terra'

# Per plottare soltanto una parte dell'immagine
# ext<-c(m_lon,M_lon,m_lat,M_lat)
# crop(nome,ext)

# imageRy
im.list() # This function produces a character vector of the names of files stored in the 'imageRy' package directory.
im.import() # This function imports a chosen image stored in the 'imageRy' package.
# im.plotRGB -->This function plots a RGB image from a SpatRaster object


