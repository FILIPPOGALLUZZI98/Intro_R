# Una funzione è un blocco di codice che esegue quando viene richiamato.
# Posso usare dentro una funzione anche una variabile globale, cioè che è stata definita
# fuori dalla funzione. If you create a variable with the same name inside a function, this
# variable will be local, and can only be used inside the function. The global variable 
# with the same name will remain as it was, global and with the original value.

# To create a function, use the 'function()' keyword
f <- function(){
  'argument'}
# To call a function, use the function name followed by parenthesis
f()

# You can add as many arguments as you want, just separate them with a comma
# The terms "parameter" and "argument" can be used for the same thing:
# information that are passed into a function. From a function's perspective: A parameter is the 
# variable listed inside the parentheses in the function definition. An argument is the value 
# that is sent to the function when it is called.

# Per più variabili
f<-function(x,y){
  return(f(x,y,a))}
# Dove al posto di f(x,y,a) scrivo la forma della funzione (con 'a' come parametro)

# Posso anche usare la funzione senza variabili in modo che faccia qualcosa quando la richiamo
f<-function(){
  print("a")}


