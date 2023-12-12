# A function is a block of code which only runs when it is called. You can pass data, 
# known as parameters, into a function. A function can return data as a result.

# To create a function, use the 'function()' keyword
f <- function(){
  'argument'}
# To call a function, use the function name followed by parenthesis, like f()

# Information can be passed into functions as arguments.
# Arguments are specified after the function name, inside the parentheses. You can add
# as many arguments as you want, just separate them with a comma
# Parameters or Arguments? The terms "parameter" and "argument" can be used for the same thing:
# information that are passed into a function. From a function's perspective: A parameter is the 
# variable listed inside the parentheses in the function definition. An argument is the value 
# that is sent to the function when it is called.
f<-function(x,y){
  f(x,y,a)}
# dove 'x', 'y' ed 'a' sono variabili/parametri e al posto di 'f(x,y,a)' va scritta la funzione che voglio
f<-function(x,y){
  x*y-3}
f(2,3)
# Ottengo come output 3







