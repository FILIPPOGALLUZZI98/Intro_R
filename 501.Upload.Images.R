# Dopo aver scaricato l'immagine in una cartella:
# Percorso cartella --> "D:R_Studio"
# Se invece metto "D:\R_Studio" non funziona, quindi fare attenzione a '/' dopo 'D:'
setwd("D:R_Studio")  ## setwd --> set working directory
img<-rast("NOME_FILE.ESTENSIONE")  ## rast() --> per importare l'immagine (raster data)
# Su windows ricordare di aggiungere l'estensione alla fine perché la nasconde!!
