# An if statement is written with the 'if' keyword, and it is used to specify a block of code to be 
# executed if a condition is TRUE
if (a<b) {'scope'}
# The 'else if' keyword is R's way of saying "if the previous conditions were not true, then try this condition"
if (a<b) {'scope_1'} 
else if (a == b) {'scope_2'}
# The 'else' keyword catches anything which isn't caught by the preceding conditions
if(a<b) {'scope_1'}
else {scope_2'}
# You can also have if statements inside if statements, this is called nested if statements




# With the 'while' loop we can execute a set of statements as long as a condition is TRUE
i <- 1
while (i < 6) {'
  "scope'
  i <- i + 1}
# With the 'break' statement, we can stop the loop even if the while condition is TRUE
i <- 1
while (i < 6) {
  'scope'
  i <- i + 1
  if (i == 4) {
    break}}
# With the 'next' statement, we can skip an iteration without terminating the loop
i <- 0
while (i < 6) {
  i <- i + 1
  if (i == 3) {
    next}




# A for loop is used for iterating over a sequence
for (x in 1:10) {
  'scope'}
#The for loop does not require an indexing variable to set beforehand, like with while loops.
# With the break statement, we can stop the loop before it has looped through all the items
# With the next statement, we can skip an iteration without terminating the loop









