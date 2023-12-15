## IF
# An if statement is written with the 'if' keyword, and it is used to specify a block of code to be 
# executed if a condition is TRUE
if (condition) {argument}
# The 'else if' keyword is R's way of saying "if the previous conditions were NOT true, then try this condition"
if (condition_1) {argument_1
   }else if (condition_2) {argument_2}  ## '{' deve essere attaccata a 'else if'
# The 'else' keyword catches anything which isn't caught by the preceding conditions
if(a<b) {argument_1
  }else {argument_2}
# You can also have if statements inside if statements, this is called nested if statements



## WHILE
# With the 'while' loop we can execute a set of statements as long as a condition is TRUE
while (condition) {
  argument
  counter_change}
# With the 'break' statement, we can stop the loop even if the while condition is TRUE
while (condition_1) {
  argument
  counter_change
  if (condition_2) {
    break}}
# With the 'next' statement, we can skip an iteration without terminating the loop
while (condition_1) {
  argument
  counter_change
  if (condition_2) {
    next}



## FOR
# A for loop is used for iterating over a sequence
for (x in 1:10) {
  argument}
#The for loop does not require an indexing variable to set beforehand, like with while loops.
# With the break statement, we can stop the loop before it has looped through all the items
# With the next statement, we can skip an iteration without terminating the loop









