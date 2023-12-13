# Una funzione è un blocco di codice che esegue quando viene richiamato.
# Posso usare dentro una funzione anche una variabile globale, cioè che è stata definita
# fuori dalla funzione. If you create a variable with the same name inside a function, this
# variable will be local, and can only be used inside the function. The global variable 
# with the same name will remain as it was, global and with the original value.
# Per ottenere informazioni su una funzione
?function_name()

# To create a function, use the 'function()' keyword
f <- function(){  
  argument}
# In questo caso non ci sono variabili in input ma semplicemente esegue un comando, esempio:
f<-function(){
  print("a")}
# To call a function, use the function name followed by parenthesis
f()

# Per variabili in input
f<-function(x,y){
  return(F(x,y))}
# Dove al posto di F(x,y,a) scrivo la forma della funzione
# You can add as many arguments as you want, just separate them with a comma

f<-function(x,y){
  return(x+y-(x**3))
  }
f(2,3)

