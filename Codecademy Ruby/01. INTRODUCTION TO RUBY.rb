# OVERVIEW & SNEAK PEEK
# Ruby is a powerful, flexible programming language you can use in web/Internet development, to process text, to create games, and as part of the popular Ruby on Rails web framework. Ruby is:

# High-level, meaning reading and writing Ruby is really easy—it looks a lot like regular English!

# Interpreted, meaning you don't need a compiler to write and run Ruby. You can write it here at Codecademy or even on your own computer (many are shipped with the Ruby interpreter built in—we'll get to the interpreter later in this lesson).

# Object-oriented, meaning it allows users to manipulate data structures called objects in order to build and execute programs. We'll learn more about objects later, but for now, all you need to know is everything in Ruby is an object.

# Easy to use. Ruby was designed by Yukihiro Matsumoto (often just called "Matz") in 1995. Matz set out to design a language that emphasized human needs over those of the computer, which is why Ruby is so easy to pick up.

# This course assumes no previous knowledge of Ruby in particular or programming/computer science in general.

# Instructions
# Ready to learn Ruby? Click the Submit button to continue!

puts "Wellcome to Ruby!"

========================================

# DATA TYPES: NUMBERS, STRINGS, BOOLEANS
# In Ruby, your information (or data) can come in different types. There are three data types in Ruby that we're interested in right now: numbers, booleans (which can be true or false), and strings (words or phrases like "I'm learning Ruby!").

# Computer programs exist to quickly analyze and manipulate data. For that reason, it's important for us to understand the different data types that we can use in our programs.

# Reminder: never use quotation marks (' or ") with booleans, or Ruby will think you're talking about a string (a word or phrase) instead of a value that can be true or false. It's also important to remember that Ruby is case-sensitive (it cares about capitalization).

# Instructions
# Set the following variables to the corresponding values:

# my_num to the value 25
# my_boolean to the value true
# my_string to the value "Ruby" (note the capitalization!)

my_num = 25   # Add your code here!

my_boolean = true     # And here!

my_string = "Ruby"    # Also here.

========================================

# VARIABLES
# One of the most basic concepts in computer programming is the variable. You can think of a variable as a word or name that grasps a single value. For example, let's say you needed the number 25 from our last example, but you're not going to use it right away. You can set a variable, say my_num, to grasp the value 25 and hang onto it for later use, like this:

my_num = 25

# Declaring variables in Ruby is easy: you just write out a name like my_num, use = to assign it a value, and you're done! If you need to change a variable, no sweat: just type it again and hit = to assign it a new value

my_num = 100

============================================================

# MATH
# Ruby isn't limited to simple expressions of assignment like my_num = 100; it can also do all the math you learned about in school.

# There are six arithmetic operators we're going to focus on:

# Addition (+)
# Subtraction (-)
# Multiplication (*)
# Division (/)
# Exponentiation (**)
# Modulo (%)

# The only ones that probably look weird to you are exponentiation and modulo. Exponentiation raises one number (the base) to the power of the other (the exponent). For example, 2**3 is 8, since 2**3 means "give me 2 * 2 * 2" (2 multiplied together 3 times). 3**2 is 9 (3 * 3), and so on.

# Modulo returns the remainder of division. For example, 25 % 7 would be 4, since 7 goes into 25 3 times with 4 left over.

25 % 4

# =============================================================

# PUTS' AND 'PRINT'
# The print command just takes whatever you give it and prints it to the screen. puts (for "put string") is slightly different: it adds a new (blank) line after the thing you want it to print. You use them like this:

puts "What's up?"
print "Oxnard Montalvo"

# No parentheses or semicolons needed!

# Instructions
# In the editor, use at least one print statement and at least one puts statement. You can print out any strings you like! (Make sure to put your strings between quotes, like this: "Hello!".)

print "my"

puts "my"

==================================================================

# EVERYTHING IN RUBY IS AN OBJECT
# Because everything in Ruby is an object (more on this later), everything in Ruby has certain built-in abilities called methods. You can think of methods as "skills" that certain objects have. For instance, strings (words or phrases) have built-in methods that can tell you the length of the string, reverse the string, and more.

# We also promised to tell you more about the interpreter. The interpreter is the program that takes the code you write and runs it. You type code in the editor, the interpreter reads your code, and it shows you the result of running your code in the console (the bottom window on the right).

===================================================================

# THE '.LENGTH' METHOD
# Methods are summoned using a .. If you have a string, "I love espresso", and take the .length of it, Ruby will return the length of the string (that is, the number of characters—letters, numbers, spaces, and symbols). Check it out:

"I love espresso".length
# ==> 15
# (That little line starting with the # isn't part of what you need to write—it just shows you the output Ruby will provide. More on this in the next section!)

# Taking the length of input can be useful if, for example, you want to make a website that takes credit card payments. Ruby can check to make sure the credit card number appears to be valid.

# Instructions
# Call the .length method on your name (remember to use quotes around your name).

"My love is beautiful".length

====================================================================

# THE '.REVERSE' METHOD
# The .reverse method is called the same way .length is, but instead of asking Ruby to tell you how long a string is, it spits out a backwards version of the string you gave it. For instance,

"Eric".reverse

# will result in

"cirE"

# Reversing input can be useful if you want to sort a list of values from highest to lowest instead of lowest to highest. (We'll get to sorting in later lessons.)

# Instructions
# Call the .reverse method on your name. Don't forget those quotation marks around your name to make it a string!

"Pavlo".reverse

====================================================================

'.UPCASE' & '.DOWNCASE'

# Let's try one more method (er, two methods). As you might have guessed, the .upcase and .downcase methods convert a string to ALL UPPER CASE or all lower case, respectively.

# Call .upcase on your name to make your name ALL CAPS and use puts to print it to the screen, like this:

puts "eric".upcase
# ==> ERIC

# On the next line, call .downcase to make your name all lower case. Make sure to use puts so you can see it printed out!

puts "Paul".upcase

print "Paul".downcase

======================================================================

# SINGLE-LINE COMMENTS
# You probably saw us use the # sign a few times in earlier exercises. The # sign is for comments in Ruby. A comment is a bit of text that Ruby won't try to run as code: it's just for humans to read. Writing good comments not only clarifies your code for other people who may read it, but helps remind you of what you were doing when you wrote the code days, months, or even years earlier.

# The sign should come before your comment and affects anything you write after it, so long as you're on a single line. (We'll show you how to do multi-line comments in a second.) Check out these examples:

# I'm a full line comment!
"Eric".length # I'm a comment, too!

# The second example will return 4, since the comment comes after the code that Ruby will execute.

# Instructions
# Write a comment in the editor. It can be anything you like!

# my comment in Ruby

======================================================================

# MULTI-LINE COMMENTS
# You can write a comment that spans multiple lines by starting each line with a #, but there's an easier way. If you start with =begin and end with =end, everything between those two expressions will be a comment. Take a look at this example:

=begin
I'm a comment!
I don't need any # symbols.
=end

# Don't put any space between the = sign and the words begin or end. You can do that with math (2 + 5 is the same as 2+5), but in this case, Ruby will get confused. =begin and =end also need to be on lines all by themselves, just as shown above.

# Instructions
# Create a multi-line comment in the editor to the right. Make sure =begin and =end are on their own lines!

=begin

my
multi
line
comment

=end
========================================

# NAMING CONVENTIONS
# There are many different kinds of variables you'll encounter as you progress through these courses, but right now we're just concerned with regular old local variables. By convention, these variables should start with a lowercase letter and words should be separated by underscores, like counter and masterful_method. Ruby won't stop you from starting your local variables with other symbols, such as capital letters, $s, or @s, but by convention these mean different things, so it's best to avoid confusion by doing what the Ruby community does.

# Instructions
# Create a variable name in the editor and set it equal to your name as a string (between quotes, like this: "Eric"). Your string can be capitalized, but name should be all lower case!

name = "Epic"

========================================

# VARIABLES & DATA TYPES
# Let's quickly review how to declare and set variables. Remember, you declare a variable just by saying its name, and you set it using =. You can always check the Hint below if you need more help.

# Instructions
# Create a variable called my_name and set it equal to your name as a string. Create a second variable called my_age and set it equal to your age as a number (don't use any quotes around the number).

my_name = "James McCloud"
my_age = 29

============================================================================

# MATH
# Good! Now let's do a little math.

# Instructions
# In the editor, set the variables:

# sum equal to 13 + 379
# product equal to 923 * 15
# quotient equal to 13209 / 17

sum = 13 + 379
product = 923 * 15
quotient = 13209 / 17

=============================================================================

# STRINGS AND STRING METHODS
# Well done! Let's do a little review of string methods. Remember, you call a method by using the . operator, like this: "string".method.

# Instructions
# Declare a variable name and set it equal to a string containing your name. Call .downcase on your name to make it all lower case, call .reverse on your lowercase name to make it backwards, then call .upcase on your backwards name to make it ALL CAPS.

# In Ruby, you can do this two ways: each method call on a separate line, or you can chain them together, like this:

name.method1.method2.method3

name = "John Gallaher"
name.downcase.reverse.upcase

=============================================================================

# COMMENTS
# Great work! For our last review exercise for this lesson, let's go over single- and multi-line comments.

# Instructions
# Create a single-line comment and a multi-line comment in the editor to the right. (Check the Hint if you need a reminder on the syntax.) Hit Save & Submit Code to see your glorious comments and complete the Introduction to Ruby!

# single comment

=begin
multi
line
comments
=end

==============================================================================

# WHAT YOU'LL BE BUILDING
# This project will help you create a small program that will read a user's input and correct his or her capitalization. Users can provide an almost infinite range of input, so it makes our lives easier as programmers to make their input standard before doing anything with it.

# Instructions
# Check out the code in the editor—we've added some new things that we'll be teaching you. Can you guess what it does? Click Save & Submit Code to find out!

# Answer each question, and hit enter (return on some keyboards).

print "What's your first name?"
first_name = gets.chomp
first_name.capitalize!

print "What's your last name?"
last_name = gets.chomp
last_name.capitalize!

print "What city are you from?"
city = gets.chomp
city.capitalize!

print "What state or province are you from?"
state = gets.chomp
state.upcase!

puts "Your name is #{first_name} #{last_name} and you're from #{city}, #{state}!"

========================================

# PROMPTING THE USER
# First, let's write the code we're already familiar with. In order to get input from the user, we'll first need to print a prompt on the screen.

# Instructions
# print the question "What's your first name?" to the screen. Feel free to peek back at the first exercise if you need a syntax reminder.

print "What's your first name?"

========================================

# GETTING INPUT
# Good! Now let's try something new. You may have noticed this weird little line of code repeated in our example:

variable_name = gets.chomp

# gets is the Ruby method that gets input from the user. When getting input, Ruby automatically adds a blank line (or newline) after each bit of input; chomp removes that extra line. (Your program will work fine without chomp, but you'll get extra blank lines everywhere.)

# Instructions
# Declare a variable first_name and set it equal to gets.chomp.

print "What's your first name?"
first_name = gets.chomp

========================================

# REPEAT FOR MORE INPUT
# All right! Now we need to repeat what we've done for last_name, city, and state.

# Instructions
# Add print prompts, variables, and gets.chomps for the user's last name, city, and state/province. Use last_name as the variable for the user's last name, city for their city, and state for their state or province. (Hint: prompt the user to provide an abbreviation for their state or province, such as "NY" for New York. This will naturally lead us to use .upcase later!)

print "What's your first name?"
first_name = gets.chomp

print "What's your last name?"
last_name = gets.chomp

print "What's your city?"
city = gets.chomp

print "What's your state?"
state = gets.chomp

========================================

# PRINTING THE OUTPUT
# As you might have noticed, Ruby's not really returning any feedback to us. We want to be able to see our string formatting in action! For this, we'll need one more new piece of syntax.

# If you define a variable monkey that's equal to the string "Curious George", and then you have a string that says "I took #{monkey} to the zoo", Ruby will do something called string interpolation and replace the #{monkey} bit with the value of monkey—that is, it will print "I took Curious George to the zoo". We can do the same thing here! For example:

first_name = "Kevin"
puts "Your name is #{first_name}!"
will print "Your name is Kevin!"

# Instructions
# Let's use this syntax to print out the values of first_name, last_name, city, and state using #{} syntax.

print "What's your first name?"
first_name = gets.chomp

print "What's your last name?"
last_name = gets.chomp

print "What's your city?"
city = gets.chomp

print "What's your state?"
state = gets.chomp

print "Your name is #{first_name} #{last_name} and you came from #{city}, #{state}."

========================================

# FORMATTING WITH STRING METHODS
# Great! Now we've got our output, but as you can see, we haven't used string methods to properly capitalize everything yet.

print "This is my question?"
answer = gets.chomp
answer2 = answer.capitalize
answer.capitalize!

# First we introduce one new method, capitalize, here. It capitalizes the first letter of a string and makes the rest of the letters lower case. We assign the result to answer2
# The next line might look a little strange, we don't assign the result of capitalize to a variable. Instead you might notice the ! at the end of capitalize. This modifies the value contained within the variable answer itself. The next time you use the variable answer you will get the results of answer.capitalize
# Instructions
# After each variable assignment: first_name, last_name, and city add the .capitalize! method
# For state use the .upcase! method

print "What's your first name?"
first_name = gets.chomp

print "What's your last name?"
last_name = gets.chomp

print "What's your city?"
city = gets.chomp

print "What's your state?"
state = gets.chomp

print "Your name is #{first_name}.capitalize! #{last_name}.capitalize! and you came from #{city}.capitalize!, #{state}.upcase! ."

========================================

# GREAT WORK!
# Perfect! In just a few short steps, you've created your own Ruby program with real-world applications. Feel free to add to your program or change it as much as you like.

print "What's your first name?"
first_name = gets.chomp.capitalize!

print "What's your last name?"
last_name = gets.chomp.capitalize!

print "What's your city?"
city = gets.chomp.capitalize!

print "What's your state?"
state = gets.chomp.capitalize!

print "Your name is #{first_name}.capitalize! #{last_name} and you came from #{city}.capitalize!, #{state}.upcase! ."
