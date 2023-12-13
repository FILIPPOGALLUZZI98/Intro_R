## PIE CHART
# Per fare un grafico a torta uso la funzione 'pie()'
x<-c(10,20,30,40)
pie(x)
# The size of each pie is determined by comparing the value with all the other values, 
# by using this formula: the value divided by the sum of all values: x/sum(x)

# Di default il grafico parte dall'asse-x e va in senso antioriario
# Per cambiare l'angolo di partenza 'init.angle'
pie(x, init.angle=90)

# Per aggiungere i nomi negli spicchi basta usare 'label'
label_1=c("Variabile_1","Variabile_2","Variabile_3")
pie(x, label=label_1, main="TITOLO GRAFICO")
# Use the label parameter to add a label to the pie chart, and use the main parameter to add a header

# Per cambiare il colore
cl=c("red", "blue", "green")
pie(x, col=col)

# Per aggiungere una legenda
pie(x, label=label_1)
legend("bottomright", label_1, fill = cl)
# bottomright, bottom, bottomleft, left, topleft, top, topright, right, center

###########################################################################################################
###########################################################################################################
## BAR CHART
# Bar charts can be displayed horizontally or vertically
# The height or length of the bars are proportional to the values they represent
x<-c("A","B","C","D")
y<-c(2,4,6,8)
barplot(y, names.arg=x)

# If you want the bars to be displayed horizontally instead of vertically, use 'horiz=TRUE'
barplot(y, names.arg=x, horiz=TRUE)

# To change the bar texture, use the 'density' parameter
barplot(y, names.arg=x, density=10)

# Use the 'width' parameter to change the width of the bars:
barplot(y, names.arg=x, width=c(1,2,3,4))

###########################################################################################################
###########################################################################################################
## HISTOGRAMS
# Per fare istogrammi
hist()




