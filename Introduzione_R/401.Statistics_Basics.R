# Funzioni Statistiche di Base
mean(); median(); weighted.mean(); quantile(); range(); IQR()
SD(); var(); min(); max(); cov(); cor()

#############################################################################################################
#############################################################################################################
# Per cercare relazione lineare
rl<-lm(y~x,data=dataset) # 'x' ed 'y' devono essere variabili del dataset
plot(y~x,data=nome_dataset)
abline(rl) # Per fare la retta di regressione sul grafico dei punti

# More generally, you can use the 'predict' function to use the model to predict values of y for any x
p <- predict(rl, data.frame(var_x=1:30))

#############################################################################################################
#############################################################################################################
# Per ottenere le distribuzioni di frequenze usiamo
a<-table(dataset)
# oppure
prop.table(a) 
# Quest'ultima per le frequenze relative
# prop.table(a) deve avere come argomento table(dataset)

# Distribuzione di frequenze bivariata
table(a,b)

# Per trasformare una variabile continua 'a' in una categorica 'b' uso 
b<-cut(a)
# L'argomento "breaks" permette di specificare il numero di classi di uguale ampiezza o,
# inseriti in un vettore, gli estremi predefiniti delle classi
b<-cut(a,breaks=4)
b<-cut(a,breaks=c(1,3,5,7))
# Con "levels(b)" si visualizzano le classi di intervallo chiuse a destra (se chiuse a sinistra si aggiunge
# l'argomento "right=F"


