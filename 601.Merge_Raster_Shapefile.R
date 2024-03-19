suppressPackageStartupMessages({
  library(sf)              # useful for spatial manipulations
  library(sp)              # useful for spatial manipulations
  library(raster)          # useful for working with raster data
  library(ncdf4)           # useful for working with raster data
  library(exactextractr)   # useful for extracting data from raster files
  library(dplyr)           # useful for merging data sets
  library(reshape2)        # useful for manipulating data sets
  library(ggplot2)         # useful for data visualization
  library(ggrepel)         # useful for labeling point plots in ggplot2
  library(zoo)   
})


#################################################################################################
####  CARICARE I DATI  ##########################################################################
# Carichiamo i dati shapefile
shp = sf::read_sf("^Merge_Raster_Shapefile_Gregor/nuts/NUTS_RG_60M_2021_3035.shp")
plot(shp[,"geometry"])
# Consideriamo soltanto un subset dello shapefile (usiamo la variabile CNTR_CODE)
shp = subset(shp, CNTR_CODE == "IT")
# Impostiamo il livello di regioni che vogliamo usare (in questo caso NUTS 3)
shp = subset(shp, LEVL_CODE == 3)
plot(shp[,"geometry"])  
# Impostiamo il sistema di coordinate corretto
shp = sf::st_transform(shp, sp::CRS("+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs")) 

# Consideriamo ora un dataset raster della siccità 
# Usiamo la funzione brick perché il raster contiene più layer
r <- raster::brick("^Merge_Raster_Shapefile_Gregor/spei12_italy.nc")
# Proiettiamo le coordinate spaziali usate nello shapefile sul raster
proj4string(r) = raster::crs(shp)    
# Plottiamo il primo layer del rasterbrick
image(r[[1]])   


#################################################################################################
####  PREPARARE I DATI  #########################################################################
# Le seguenti linee di codice semplicamente servono per preparare il dataframe in un formato che 
# sia leggibile da ggplot2. Per prima cosa diamo dei nomi a tutti i raster layer, basandoci sui
# mesi e gli anni corrispondenti. Poi, costruiamo un data.frame dal raster data
names(r) <- paste0(rep(paste0(1982:2022), each=12), "-", stringr::str_pad(rep(1:12, length(1982:2022)), 2, "left", "0"))
# Questo crea un data.frame a partire dal layer numero 488 (agosto 2022)
plot.df <- as.data.frame(r[[488]], xy = TRUE)
# Infine eliminamo i dati che mancano
plot.df <- plot.df[complete.cases(plot.df), ] 


#################################################################################################
####  PLOT  #####################################################################################
ggplot() +     
  # plot the shape file as background layer (with grey borders and white provinces)
  geom_sf(data=shp, col="grey", fill="white") +  
  # geom_tile() is used to plot raster data here, with the filling color for each tile based on variable "X2022.08"
  geom_tile(data=plot.df, aes(x,y,fill=X2022.08)) + 
  # use a nicer theme than standard
  theme_bw() +                           
  # title for the legend
  labs(fill="SPEI-12\nin Aug. 2022") +          
  # again, we use the viridis color scheme
  scale_fill_viridis_c(option="inferno", end=0.8) +
  # no title on x axis
  xlab("") +               
  # no title on y axis
  ylab("")  


#################################################################################################
####  AGGREGARE USANDO POLIGONI  ################################################################
# La seguente stringa di codice estrae i dati dal rasterbrick, basandosi sui poligoni in shp
# e restituisce la media mensile per ogni regione
spei_data <- exactextractr::exact_extract(r, shp, fun="mean")

# Creiamo una colonna che contiene i nomi delle province
spei_data$region = shp$NUTS_NAME

# A questo punto riaggiungiamo i dati estratti da agosto 2022 nello shapefile in modo che
# possiamo visualizzarlo usando i poligoni
shp$spei_2022_08 = spei_data$mean.X2022.08

# Plottiamo il risultato
ggplot(shp, aes(fill=spei_2022_08)) + 
  geom_sf(col="black") +
  theme_bw() +
  labs(fill="Avg. SPEI-12\nin Aug. 2022") +
  scale_fill_viridis_c(option="inferno", end=0.8)


#################################################################################################
####  VISUALIZZARE SERIE TEMPORALI  #############################################################



















