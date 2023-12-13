# I pacchetti sono delle librerie di software
# CRAN = Comprehensive R Archive Network, dove sono raccolti tutti i pacchetti R
# Per installare ed usare i pacchetti dobbiamo importarli dall'esterno, quindi servono le virgolette
install.packages("nomepacchetto")
# Se un pacchetto è già installato allora dobbiamo richiamarlo ogni volta che vogliamo usarlo
library(nomepacchetto)

# Per ottenere informazioni su un pacchetto
?nome_pacchetto
data(package = .packages(all.available = TRUE))  ## Per vedere i contenuti di tutti i pacchetti installati
data()  ## VUOTO! ci fa vedere le descrizioni dei datasets contenuti dei vari pacchetti richiamati

#######################################################################################################
#######################################################################################################
readxl  ## Per leggere file excel
bei  ## 
terra  ## Analisi Spaziale
sdm  ## Species Distribution Model
vegan  ## Vegetation Analysis
spatstat  ## 
devtools  ## 
imageRy  ## Per installarlo: library(devtools); install_github("ducciorocchini/imageRy")
viridis  ## 
ggplot  ##
ncdf4  ##

