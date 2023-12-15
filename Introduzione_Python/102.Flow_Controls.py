## IF
# If you have only one statement to execute, you can put it on the same line as the if statement
# altrimenti l'indentazione conta!!

if condition:
  argument  

 # The 'elif' keyword is Python's way of saying "if the previous conditions were not true, then try this condition"
if condition_1:
  argument_1
elif condition_2:
  argument_2

# The else keyword catches anything which isn't caught by the preceding conditions
if condition:
  argument_1
else:
  argument_2

# 'if' statements cannot be empty, but if you for some reason have an if statement with no content, put
# in the 'pass' statement to avoid getting an error
if condition:
  pass
#########################################################################################################################
#########################################################################################################################
## WHILE
# With the while loop we can execute a set of statements as long as a condition is true
while condition:
  argument
  condition_change
  
# With the 'break' statement we can stop the loop even if the while condition is true
while condition_1:
  argument
  if condition_2
  break
  counter_change
  
# With the 'continue' statement we can stop the current iteration, and continue with the next
while condition_1:
  argument
  if condition_2
  continue
  argument_2
  counter_change

# With the 'else' statement we can run a block of code once when the condition no longer is true
while condition_1:
  argument
  counter_change
else:
  condition_2
#########################################################################################################################
#########################################################################################################################
## FOR
# A for loop is used for iterating over a sequence
for x in A:
  argument

# With the 'break' statement we can stop the loop before it has looped through all the items
for x in A:
  argument
  if condition:
    break

# With the 'continue' statement we can stop the current iteration of the loop, and continue with the next
for x in A:
  if condition:
    continue
  argument

# The 'else' keyword in a for loop specifies a block of code to be executed when the loop is finished
for x in A:
  argument_2
else:
  argument_2








