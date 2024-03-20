suppressPackageStartupMessages({
  library(sf)              ## useful for spatial manipulations
  library(sp)              ## useful for spatial manipulations
  library(raster)          ## useful for working with raster data
  library(ncdf4)           ## useful for working with raster data
  library(exactextractr)   ## useful for extracting data from raster files
  library(dplyr)           ## useful for merging data sets
  library(reshape2)        ## useful for manipulating data sets
  library(ggplot2)         ## useful for data visualization
  library(ggrepel)         ## useful for labeling point plots in ggplot2
  library(lubridate)
  library(zoo)   
})


#################################################################################################
####  CARICARE I DATI  ##########################################################################
# Carichiamo i dati shapefile
shp <- sf::read_sf("^Merge_Raster_Shapefile_Gregor/nuts/NUTS_RG_60M_2021_3035.shp")
# Consideriamo soltanto un subset dello shapefile (usiamo la variabile CNTR_CODE)
shp <- subset(shp, CNTR_CODE == "IT")
# Impostiamo il livello di regioni che vogliamo usare (in questo caso NUTS 3)
shp <- subset(shp, LEVL_CODE == 3)
plot(shp[,"geometry"])  
# Impostiamo il sistema di coordinate corretto
shp <- sf::st_transform(shp, sp::CRS("+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs")) 

# Consideriamo ora un dataset raster della siccità 
# Usiamo la funzione brick perché il raster contiene più layer
r <- raster::brick("^Merge_Raster_Shapefile_Gregor/spei12_italy.nc")
# Proiettiamo le coordinate spaziali usate nello shapefile sul raster
proj4string(r) <- raster::crs(shp)    
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
spei_data$region <- shp$NUTS_NAME

# A questo punto riaggiungiamo i dati estratti da agosto 2022 nello shapefile in modo che
# possiamo visualizzarlo usando i poligoni
shp$spei_2022_08 <- spei_data$mean.X2022.08

# Plottiamo il risultato
ggplot(shp, aes(fill=spei_2022_08)) + 
  geom_sf(col="black") +
  theme_bw() +
  labs(fill="Avg. SPEI-12\nin Aug. 2022") +
  scale_fill_viridis_c(option="inferno", end=0.8)


#################################################################################################
####  VISUALIZZARE SERIE TEMPORALI  #############################################################
# Portiamo i dati in un formato che sia consono per plottare con ggplot2, portando i dati da un formato
# largo ad uno lungo
plot.df <- reshape2::melt(spei_data, id.vars="region")

# Creiamo la variabile 'date', utile per plottare l'indice SPEI-12 nel tempo
plot.df$date <- zoo::as.Date(zoo::as.yearmon(substr(as.character(plot.df$variable), 7, 13), "%Y.%m"))

# Plottiamo il risultato
ggplot(subset(plot.df, region %in% c("Pordenone", "Milano", "Palermo", "Bologna")), 
       # date on x axis, spei (stored in variable "value") on y axis, color (of outlines) based on spei, filling based on spei
       aes(date, value, fill=value, col=value)) +   
  # add a horizontal line at zero
  geom_hline(yintercept=0) +                  
  # add a horizontal, dotted (lty=3) line at -1.5 to visualize the threshold for severe drought
  geom_hline(yintercept=-1.5, lty=3) +     
  # split the plot into separate plots for each region, organized in two columns
  facet_wrap(region~., ncol=2) +        
  # nicer theme than standard theme
  theme_bw() +         
  # white background for province names
  theme(strip.background=element_rect(fill="white")) +          
  # y axis title
  ylab("SPEI-12") +                                                                
  # x axis title
  xlab("") +                                                                       
  # columns for SPEI in each month
  geom_col() +                                                                      
  # set color palette (for the outlines of the columns)
  scale_fill_viridis_c(option="inferno", end  = 0.8) +                              
  # set fill palette (for filling the columns)
  scale_color_viridis_c(option="inferno", end = 0.8) +                              
  # set legend title
  labs(fill="SPEI-12",col="SPEI-12")  


#################################################################################################
####  POINT DATA ON PROTESTS ITALY  #############################################################
# Point data sono oggetti spaziali dove ogni data point è caratterizzato da coordinate in uno spazio
# bidimensionale. I dati seguenti sono relativi alle proteste e rivolte in italia 2020-2022
acled <- read.csv("^Merge_Raster_Shapefile_Gregor/acled_italy.csv")
# Plot the data
ggplot(shp) +           
  # plot the outlines of the shapefile of italy (using black borders and transparent filling)
  geom_sf(fill = NA, col = "black") +  
  # plot points for each event, using longitude, latitude as x and y, set shape and color of points using variable "event type" (which is either protests or riots)
  geom_point(data = acled, aes(longitude, latitude, shape = event_type, col = event_type), size=1) + 
  # set nice theme
  theme_bw() +                     
  # separate plots by event type
  facet_wrap(~event_type) +                   
  # hide legend
  theme(legend.position = "none") +          
  # set color scheme
  scale_color_viridis_d(end = 0.7,begin=0.2,option="inferno") +    
  # white background for variable names
  theme(strip.background = element_rect(fill="white"))  +          
  # empty x axis title
  xlab("") +                                         
  # empty y axis title
  ylab("")   

# Per aggregare i dati usando poligoni di uno shapefile dobbiamo prima trasformare i dati che abbiamo in
# un oggetto spaziale. Poi, dobbiamo impostare lo stesso sistema di coordinate
acled <- sf::st_as_sf(acled, coords = c("longitude","latitude"), remove = FALSE)
sf::st_crs(acled) <- sf::st_crs(shp)

# A questo punto dobbiamo contare quanti punti cadono dentro ai poligoni usando 'intersects'
intersection <- sf::st_intersects(acled, shp)            
# set non-matched values to NA, these points are recorded in no province (outliers, miscoding, ...)
intersection[sapply(intersection, length) == 0] = NA    
# merge region name to conflict data points
acled$region   <- shp$NUTS_NAME[unlist(intersection)]   
acled$geometry <- NULL  ## Questo serve solo per velocizzare il processo

# Creiamo una nuova variabile chiamata number_events
acled <- acled %>% group_by(year, month, region, event_type) %>% summarise(number_events = n())
# Rinominiamo le colonne e riordiniamo il dataframe in modo che non perdiamo traccia di quello che facciamo
colnames(acled) <- c("year", "month", "region", "event_type", "count")
acled <- acled[order(acled$region, acled$year, acled$month),]

# Creiamo un dataset vuoto dove abbiamo righe per ogni mese per ogni provincia e per ogni tipo di protesta
# Poi uniamo i data point osservati in ogni provincia in questo datafrarme
acled$month <- as.numeric(acled$month)
full <- expand.grid(year = 2020:2022, month = 1:12, region = unique(acled$region), type = c("Protests", "Riots"))
full <- left_join(full, acled, by=c("region", "year", "month", "type"="event_type"))
full$count[is.na(full$count)] <- 0 # assign a zero to each month/province where no data is observed
full$date <- as.Date(paste0(full$year, "-", full$month, "-01"))

# Plottiamo per province scelte
ggplot(subset(full, region%in%c("Napoli", "Milano", "Bologna", "Palermo")), 
       # "date" is on the x axis, "count" is on the y axis, color and shape of the points are based on "region" and "type" of event
       aes(x=date, y=count, col=region, shape=type)) +         
  # draw the points
  geom_point() +   
  # draw a line connecting the points, alpha=0.2 means transparency (alpha=1 is fully solid, alpha=0 is invisible).lty is linetype, which varies across regions
  geom_line(alpha=0.2, aes(lty=region)) +
  # double split the plot, "type" in the rows, "region" in the columns
  facet_grid(type~region, scales="free") +    
  # empty x axis title
  xlab("") +          
  # y axis title
  ylab("Event Counts") +     
  # nice theme
  theme_bw() +                                                             
  # hide legend
  theme(legend.position = "none") +     
  # white background for title strips
  theme(strip.background=element_rect(fill="white")) +                     
  # viridis color scheme with some customization
  scale_color_viridis_d(end=0.7, option="inferno") +                        
  # rotate the x-axis labels and adjust their position
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1))      


#################################################################################################
####  MERGING CLIMATE, POP, PROTESTS DATA  ######################################################
spei_data <- reshape2::melt(spei_data, id.vars="region")  ## reshape the data to long format
spei_data$year <- lubridate::year(zoo::as.Date(zoo::as.yearmon(substr(as.character(plot.df$variable), 7, 13), "%Y.%m")))  ## extract the year from the data
spei_data$month <- lubridate::month(zoo::as.Date(zoo::as.yearmon(substr(as.character(plot.df$variable), 7, 13), "%Y.%m")))  ## extract the month from the data
full <- left_join(full, spei_data[,c("year", "region", "month", "value")], by=c("region", "year", "month"))  ## join the data by province, year and month

# this code join the protest/riot/spei data to the population data / shapefile
full <- reshape2::dcast(full, year + month + region ~ type, value.var = "count")  ## reshape the data
full <- aggregate(full[, c("Protests", "Riots")], by=list(full$region), FUN = sum)  ## compute sum of protests and riots per province between 2020-2022
shp <- left_join(shp, full, by=c("NUTS_NAME"="Group.1"))  ## join the total protest and riot counts to the original shapefile

# Calcoliamo il numero di proteste e rivolte per 1,000 abitanti
shp$ppc <- 1000 * shp$Protests/shp$population2022  ## compute protests per 1000 capita
shp$rpc <- 1000 * shp$Riots/shp$population2022  ## compute riots per 1000 capita
## CI SONO DEI GRAFICI CHE NON HO FATTO, MA POSSO VEDERE DIRETTAMENTE DAL FILE

# Combiniamo ora i dati edlla popolazione, proteste/rivolte e SPEI-12
ggplot(shp, aes(rpc * 1000, 1000 * ppc, col=spei_2022_08)) +     
  # draw the points
  geom_point() +    
  # nice theme
  theme_bw() +    
  # y axis label
  ylab("Protests Per 1000 Inhabitants") +      
  # x axis label
  xlab("Riots Per 1000 Inhabitants") +        
  # special command from "ggrepel" package: automatically labels the points based on "NUTS_NAME" variable in shp
  geom_text_repel(aes(label = NUTS_NAME), max.overlaps=2) +        
  # viridis color palette
  scale_color_viridis_c(option="inferno", end=0.8) +          
  # legend label
  labs(col="SPEI-12\nin Aug. 2022")  























