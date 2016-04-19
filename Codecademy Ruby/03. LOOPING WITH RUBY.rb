=====

# THE 'WHILE' LOOP
# Sometimes you want to repeat an action in Ruby while a certain condition is true, but you don't know how many times you'll have to repeat that action. A good example would be prompting a user for a certain type of input: if they insist on giving you the wrong thing, you may have to re-ask them several times before you get the kind of input you're looking for.
#
# To accomplish this, we use something called a while loop. It checks to see if a certain condition is true, and while it is, the loop keeps running. As soon as the condition stops being true, the loop stops!
#
# Instructions
# Check out the code in the editor. Can you guess what it'll do? When you think you know, hit Save & Submit Code to see the results.

counter = 1
while counter < 11
  puts counter
  counter = counter + 1
end

=====

# DANGER: INFINITE LOOPS!
# Did you see that? The loop printed out the numbers 1 to 10, then stopped. This was because the loop's condition said to continue while counter was less than 11; since counter went up by 1 each time through the loop, the loop stopped when counter hit 11.
#
# What if we'd forgotten to increment counter? It would have stayed at 1, the loop would have kept checking to see if it was less than 11 (and 1 is always less than 11), and the loop would never have ended. This is called an infinite loop and it will cause your programs to crash. Avoid them at all costs!
#
# Instructions
# The while loop in the editor is currently an infinite loop. Correct it so it will end! (Be careful—if you click Save & Submit Code right away, you'll start the infinite loop and you'll have to refresh the page.)

i = 0
while i < 5
  puts i
  # Add your code here!
  i += 1
end

=====

# THE 'UNTIL' LOOP
# The complement to the while loop is the until loop. It's sort of like a backwards while:

i = 0
until i == 6
  i += 1
end
puts i

# In the example above, we first create a variable i and set it to zero.
# Then we execute a block of code until i is equal to 6. That block of code increments i.
# When i is equal to 6, the block ends.
# Finally, we print 6, the value of i, to the console.
# Instructions
# On line 2, fill in the __ blank so that the loop breaks when counter is greater than 10.
# On line 5, increment counter like we do in the example above.

counter = 1
until counter > 10
  puts counter
  # Add code to update 'counter' here!
  counter += 1
end

=====

# MORE ASSIGNMENT OPERATORS
# We've been using syntax like counter = counter + 1, which works, but as you'll increasingly find with Ruby, there's always another way.
#
# A shortcut is to use an assignment operator. You already know one assignment operator: =, which sets a variable. You can update a variable with additional assignment operators, however, which include +=, -=, *=, and /=. For instance, when you type

counter += 1

# You're telling Ruby: "Add 1 to counter, then assign that new value back to counter." This provides a succinct way of updating variable values in our programs.
#
# Some languages have the increment operators ++ and -- (which also add or subtract 1 from a value), but Ruby does not. You'll have to make do with += and -=!

# Instructions
# The loop from the first exercise is in the editor. Rewrite it using the appropriate assignment operator.

counter = 1
while counter < 11
  puts counter
  counter += 1
end

=====

# THE 'FOR' LOOP
# Sometimes you do know how many times you'll be looping, however, and when that's the case, you'll want to use a for loop.
#
# Instructions
# Take a look at the example for loop in the editor. Can you guess what it does? Click Save & Submit Code to see it in action.

for num in 1...10
  puts num
end

=====

# INCLUSIVE AND EXCLUSIVE RANGES
# You saw a bit of new syntax in the previous exercise: for num in 1...10. What this says to Ruby is: "For the variable num in the range 1 to 10, do the following." The following was to print "#{num}", so as num took on the values of 1 to 9, one at a time, those values were printed to the console.
#
# The reason Ruby counted to 9 and not 10 was because we used three dots in the range; this tells Ruby to exclude the final number in the count: for num in 1...10 means "go up to but don't include 10." If we use two dots, this tells Ruby to include the highest number in the range.
#
# Instructions
# Update the for loop in the editor in two ways:
#
# Make it print the numbers 1 to 15, including 15.
# Change it to use .. instead of ....

for num in 1..15
  puts num
end

=====

# BUILDING YOUR OWN
# Good work! You're ready to build your very own for loop.
#
# Instructions
# Write a for loop that puts the numbers 1 to 20, including 20, using either .. or .... Check Hint if you need a syntax refresher.

for i in 1..20
    puts i
end

=====

# THE LOOP METHOD
# So far we've learned one way to repeat an action in Ruby: using loops. As is often the case in Ruby, however, there's more than one way to accomplish a given task. In this case, it's also possible to repeat an action using an iterator.
#
# An iterator is just a Ruby method that repeatedly invokes a block of code. The code block is just the bit that contains the instructions to be repeated, and those instructions can be just about anything you like!
#
# The simplest iterator is the loop method. You can create a basic (but infinite!) loop by simply typing
#
# loop { print "Hello, world!" }
# In Ruby, curly braces ({}) are generally interchangeable with the keywords do (to open the block) and end (to close it). Knowing this, we can write a smarter loop than the one above:

i = 0
loop do
  i += 1
  print "#{i}"
  break if i > 5
end

# The break keyword is our Get Out of Jail Free card: it breaks a loop as soon as its condition is met.
#
# Instructions
# Replace the ___s in the editor with the appropriate keywords. Check the Hint if you need help!

i = 20
loop {
  i -= 1
  print "#{i}"
  break if i <= 0
}

=====

# NEXT!
# The next keyword can be used to skip over certain steps in the loop. For instance, if we don't want to print out the even numbers, we can write:

for i in 1..5
  next if i % 2 == 0
  print i
end

# In the above example, we loop through the range of 1 through 5, assigning each number to i in turn.
# If the remainder of i / 2 is zero, we go to the next iteration of the loop.
# Then we print the value of i. This line only prints out 1, 3, and 5 because of the previous line.
# Instructions
# Add a line to your loop before your print statement. Use the next keyword so that you skip to the next iteration if the number i is odd.
#
# Use the example above for help, but remember that the example above skips even numbers.

i = 20
loop {
  i -= 1
  next if i%2 != 0
  print "#{i}"
  break if i <= 0
}

=====

# SAVING MULTIPLE VALUES
# Let's say we want to save a range of numbers in a variable. How would we do this? A variable can only hold a single value, right?
#
# In Ruby, we can pack multiple values into a single variable using an array. An array is just a list of items between square brackets, like so: [1, 2, 3, 4]. The items don't have to be in order—you can just as easily have [10, 31, 19, 400].
#
# Instructions
# Create a variable called my_array and set it equal to the numbers 1 through 5, inclusive, in order.

my_array = [1, 2, 3, 4, 5]

=====

# THE .EACH ITERATOR
# Great work! You're really getting the hang of this.
#
# The loop iterator is the simplest, but also one of the least powerful. A more useful iterator is the .each method, which can apply an expression to each element of an object, one at a time. The syntax looks like this:
#
# object.each { |item| # Do something }
# You can also use the do keyword instead of {}:
#
# object.each do |item| # Do something end
# The variable name between | | can be anything you like: it's just a placeholder for each element of the object you're using .each on.
#
# Instructions
# Take a look at the code in the editor. When you're pretty sure you know what it'll do, click Save & Submit Code to test your theory.

array = [1,2,3,4,5]

array.each do |x|
  x += 10
  puts "#{x}"
end

=====

# TRY IT OUT!
# Cool, no? Now it's your turn to take the .each method for a test drive.
#
numbers = [1, 2, 3, 4, 5]

# one way to loop
numbers.each { |item| puts item }

# another way to loop
numbers.each do |item|
  puts item
end

# In the example above, we create an array called numbers.
# Then we show two different ways to print each item in numbers to the console.
# Instructions
# Use the .each method on the odds array to print out double the value of each item of the array. In other words, multiply each item by 2.
#
# Make sure to use print rather than puts, so your output appears on one line.
#
# Check the Hint if you get stuck!

odds = [1,3,5,7,9]

# Add your code below!
odds.each { |item|
    print item * 2

    }

=====

# THE .TIMES ITERATOR
# The .times method is like a super compact for loop: it can perform a task on each item in an object a specified number of times.
#
# For example, if we wanted to print out "Chunky bacon!" ten times, we might type

10.times { print "Chunky bacon!" }

# We don't know why we would type that, but we could.
#
# Instructions
# Use the .times operator to print out a string of your choice any number of times you like. Use the code in the text above as a guide if you need help.

=====

# LOOPING WITH 'WHILE'
# Okay, training wheels off. Let's see your stuff!

i = 3
while i > 0 do
  print i
  i -= 1
end

# In the above example, we create a variable called i and set it to 3.
# Then, we print out 321 since we execute the loop so long as i is positive.
# Instructions
# Use a while loop to print out the numbers 1 through 50, inclusive. While the example above counts down, you will want to count up.
#
# Use print rather than puts, and don't forget to increment your variable.

i = 1
while i < 51 do
    print i
    i += 1
end

=====

# LOOPING WITH 'UNTIL'
# Good work!

i = 3
while i > 0 do
  print i
  i -= 1
end

j = 3
until j == 0 do
  print j
  j -= 1
end

# In the example above, we wrote the same loop using while and using until.
#
# Instructions
# Now rewrite your while loop using until.
#
# You still want to print out the numbers 1 through 50, inclusive.

i = 1
until i > 50 do
    print i
    i += 1
end

=====

# LOOPING WITH 'FOR'
# In case you're not picking up on the theme of Ruby having a gajillion ways to do any given task: let's convert our loop yet again.

for k in 1..3
  print k
end

# In the above example, we print out 123 by virtue of looping from 1 to 3 inclusive.

# Instructions
# Now print out the numbers from 1 to 50 inclusive, using a for loop instead of an until loop.

for i in 1..50 do
    print i
end

=====

# LOOP THE LOOP WITH LOOP
# Great work! We'll give you a bit of a break from the numbers game.

m= 0
loop do
    m += 1
    print m
    break if m == 10
end

# In the example above, we print out 12345678910 since we loop 10 times.
#
# Instructions
# Use the loop iterator to print out the string "Ruby!" 30 times.
#
# Make sure to type the string exactly as shown!

i = 0
loop {
    i += 1
    print "Ruby!"
    break if i >= 30
    }

=====

# ITERATING WITH .TIMES
# Finally, let's replace our loop with the .times iterator.
#
# Instructions
# Use the .times iterator to print "Ruby!" to the console 30 times. Hit Save & Submit Code to see the majesty of your code and complete this lesson!

30.times {print "Ruby!"}

=====

# WHAT YOU'LL BE BUILDING
# Hiding information is a major part of programming: protecting passwords, establishing secure connections, and securing programs against tampering all rely on controlling access to information.
#
# While we won't be able to really dig into information hiding until after we cover hashes in a later course, we can write a simple program to change a user's input with the tools we have now: arrays and iterators.

# Instructions
# Hit Save & Submit Code to test out our redactor program and to learn how to build your own.

puts "Text to search through: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end

=====

# GETTING THE USER'S INPUT
# First things first: we'll need to get the user's input.
#
# Instructions
# Use puts to prompt the user for input two times. For the first puts, declare a variable called text and set it equal to the user's input via gets.chomp. For the second puts, declare a variable called redact and set it equal to the user's input using gets.chomp.

puts "Please input the text:"
text = gets.chomp
puts "Please input the searching word:"
redact = gets.chomp

=====

# THE .SPLIT METHOD
# Next, we'll want to divide the user's input into individual words.
#
# Ruby has a built-in method for this called .split; it takes in a string and returns an array. If we pass it a bit of text in parentheses, .split will divide the string wherever it sees that bit of text, called a delimiter. For example,

text.split(",")

# tells Ruby to split up the string text whenever it sees a comma.
#
# Instructions
# Declare a variable called words and set it equal to the result of calling the .split method on text. Pass .split a space (" ") to use as a delimiter so that we get an array made up of the words from text.

puts "Please input the text:"
text = gets.chomp
puts "Please input the searching word:"
redact = gets.chomp

words = text.split(" ")

=====

# REDACTED!
# All right! Time to break out our iterators to go through the user's text.

letters = ['a', 'b', 'c', 'd']
letters.each do |letter|
  print letter
end

# The example above just serves as a reminder of using .each on the letters array.
#
# Instructions
# Let's start simple: write an .each loop that goes through words and just prints out each word it finds.

puts "Please input the text:"
text = gets.chomp
puts "Please input the searching word:"
redact = gets.chomp

words = text.split(" ")

words.each do |word|
    print word
end

=====
#
# CONTROL FLOW KNOW-HOW
# Good! There were two problems with our output, though: we didn't have spaces between our words, and our program didn't actually replace the word we wanted to redact with the word "REDACTED".

if var == 10
   print "Variable is 10"
else
   print "Variable is something else"
end

# We can fix that with some if/else magic! The above example just reminds you how an if/else block works.
#
# Instructions
# Add an if/else statement inside your .each.
#
# if the current word equals the word to be redacted, then print "REDACTED " with that extra space.
# Otherwise (else), print word + " ".
# The extra space in both cases prevents the words from running together.

puts "Please input the text:"
text = gets.chomp
puts "Please input the searching word:"
redact = gets.chomp

words = text.split(" ")

words.each do |word|
    if word == redact
        print "REDACTED "
    else
        print word + " "
    end
end

=====

# GREAT WORK!
# Perfect! Feel free to mess around with your redactor to see what sorts of results you get. Think about the following:
#
# What could you do to make sure your redactor redacts a word regardless of whether it's upper case or lower case?
# How could you make your program take multiple, separate words to REDACT?
# How might you make a new redacted string and save it as a variable, rather than just printing it to the console?
# Instructions
# These are the questions. In the meantime, click Save & Submit Code to finish this REDACTED.

puts "Please input the text:"
text = gets.chomp
puts "Please input the searching word:"
redact = gets.chomp

words = text.split(" ")

words.each do |word|
    if word == redact
        print "REDACTED "
    else
        print word + " "
    end
end
