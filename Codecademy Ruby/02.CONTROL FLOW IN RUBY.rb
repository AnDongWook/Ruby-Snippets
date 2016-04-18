# HOW IT WORKS
# You may have noticed that the kinds of programs we've written so far in Ruby aren't very flexible. Sure, they can take user input, but they always produce the same result based on that input; they don't change their behavior in reaction to the environment (the collection of all variables and their values that exist in the program at a given time).

# Control flow gives us the flexibility we're looking for. We can select different outcomes depending on information the user types, the result of a computation, or the value returned by another part of the program.

# Instructions
# Check out the code in the editor. There's some new syntax there, but we'll bet you can guess what it does. Click Save & Submit Code to see the program in action! (Go ahead and give Ruby an integer—that is, a positive or negative number with no decimal bit.)

print "Integer please: "
user_num = Integer(gets.chomp)

===============================

# IF
# Ruby's if statement takes an expression, which is just a fancy word for something that has a value (like 4, true, or pants). If that expression is true, Ruby executes the block of code that follows the if. If it's not true (that is, false), Ruby doesn't execute that block of code: it skips it and goes on to the next thing.
#
# Here's an example of an if statement in action:

if 1 < 2
  print "I'm getting printed because one is less than two!"
end

# Ruby doesn't care about whitespace (spaces and blank lines), so the indentation of the print statement isn't necessary. However, it's a convention that Rubyists (Ruby enthusiasts) follow, so it's good to get in the habit now. The block of code following an if should be indented two spaces.
#
# When you're done with your if, you have to tell Ruby by typing end.
#
# Instructions
# Write your own if statement in the editor. It can take any expression you want (even just true!), but it should evaluate to true. When it does, it should print a string of your choice to the console (using print or puts).

if 2 > 1
    print "True"
end

====================================

# ELSE
# The partner to the if statement is the else statement. An if/else statement says to Ruby: "If this expression is true, run this code block; otherwise, run the code after the else statement." Here's an example:

if 1 > 2
  print "I won't get printed because one is less than two."
else
  print "That means I'll get printed!"
end

# Instructions
# Try it yourself in the editor! Use any expression you like in your if/else statement, but make sure both branches print a string of your choice to the console.

if 2 > 1
    print "True"
else
    print "False"
end

===========================================

# ELSIF
# What if you want more than two options, though? It's elsif to the rescue! The elsif statement can add any number of alternatives to an if/else statement, like so:

if x < y  # Assumes x and y are defined
  puts "x is less than y!"
elsif x > y
  puts "x is greater than y!"
else
  puts "x equals y!"
end

# Instructions
# Add an elsif block to your if/else statement in the editor.

if 2 > 1
    print "True"
elsif 2 == 1
    print "The same"
else
    print "False"
end


========================================

# UNLESS
# Sometimes you want to use control flow to check if something is false, rather than if it's true. You could reverse your if/else, but Ruby will do you one better: it will let you use an unless statement.
#
# Let's say you don't want to eat unless you're hungry. That is, while you're not hungry, you write programs, but if you are hungry, you eat. You might write that program in Ruby like this:

unless hungry
  # Write some sweet programs
else
  # Have some noms
end

# Instructions
# We've started you off in the editor. Replace the ___s with the correct unless statement code so your program prints out "I'm writing Ruby programs!"

hungry = false

unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end

===============================================

# EQUAL OR NOT?
# In Ruby, we assign values to variables using =, the assignment operator. But if we've already used = for assignment, how do we check to see if two things are equal? Well, we use ==, which is a comparator (also called a relational operator). == means "is equal to." When you type

x = 2
y = 2
if x == y
  print "x and y are equal!"
end

# you're saying: "if x equals y, print 'x and y are equal!'" You can also check to see if two values are not equal using the != comparator.
#
# Instructions
# We've got two variables in the editor: is_true and is_false. Replace the __ with == or != to make is_true evaluate to true and is_false evaluate to false.

is_true = 2 != 3

is_false = 2 == 3

=========================================

# LESS THAN OR GREATER THAN
# We can also check to see if one value is less than, less than or equal to, greater than, or greater than or equal to another. Those operators look like this:

Less than: <
Less than or equal to: <=
Greater than: >
Greater than or equal to: >=

# Instructions
# We've set up a few variables in the editor. We want them all to evaluate to true. Your job: replace the __s with <, <=, >, or >= to make the expression for each variable true!

test_1 = 17 >= 16

test_2 = 21 <= 30

test_3 = 9 >= 9

test_4 = -11 < 4

===============================================

# PRACTICE MAKES PERFECT
# Great work so far! You know what they say: practice makes perfect. Let's try a few more comparators to make sure you've got the hang of this.
#
# Instructions
# For this round, we'll show you the comparators and you set each variable to true or false depending on what value you expect the expression to return. Remember: no quotes around true and false!

# test_1 = 77 != 77
test_1 = false

# test_2 = -4 <= -4
test_2 = true

# test_3 = -44 < -33
test_3 = true

# test_4 = 100 == 1000
test_4 = false


=======================================

# AND
# Comparators aren't the only operators available to you in Ruby. You can also use logical or boolean operators. Ruby has three: and (&&), or (||), and not (!). Boolean operators result in boolean values: true or false.
#
# The boolean operator and, &&, only results in true when both expression on either side of && are true. Here's how && works:

true && true # => true
true && false # => false
false && true # => false
false && false # => false

# For example, 1 < 2 && 2 < 3 is true because it's true that one is less than two and that two is less than three.
#
# Instructions
# Let's practice a bit with &&. Check out the boolean expressions and set each variable to true or false depending on what value you expect the expression to return.

# boolean_1 = 77 < 78 && 77 < 77
boolean_1 = false

# boolean_2 = true && 100 >= 100
boolean_2 = true

# boolean_3 = 2**3 == 8 && 3**2 == 9
boolean_3 = true

==================================================

# OR
# Ruby also has the or operator (||). Ruby's || is called an inclusive or because it evaluates to true when one or the other or both expressions are true. Check it out:

true || true # => true
true || false # => true
false || true # => true
false || false # => false
# Instructions
# Set each variable to true or false depending on what value you expect the expression to return.

# boolean_1 = 2**3 != 3**2 || true
boolean_1 = true

# boolean_2 = false || -10 > -9
boolean_2 = false

# boolean_3 = false || false
boolean_3 = false

==========================================

# NOT
# Finally, Ruby has the boolean operator not (!). ! makes true values false, and vice-versa.

!true # => false
!false # => true

# Instructions
# Set each variable to true or false depending on what value you expect the expression to return.

# boolean_1 = !true
boolean_1 = false

# boolean_2 = !true && !true
boolean_2 = false

# boolean_3 = !(700 / 10 == 70)
boolean_3 = false

======================================

# COMBINING BOOLEAN OPERATORS
# You can combine boolean operators in your expressions. Combinations like

(x && (y || w)) && z

# are not only legal expressions, but are extremely useful tools for your programs.
#
# These expression may take some getting used to, but you can always use parentheses to control the order of evaluation. Expressions in parentheses are always evaluated before anything outside parentheses.
#
# Instructions
# Last one! Set each variable to true or false depending on what value you expect the expression to return.

# boolean_1 = (3 < 4 || false) && (false || true)
boolean_1 = true

# boolean_2 = !true && (!true || 100 != 5**2)
boolean_2 = false

# boolean_3 = true || !(true || false)
boolean_3 = true

=================================================

# NICE WORK!
# Great work! So far you've learned:
#
# How to use if, else, and elsif
# How to use comparators / relational operators like ==, !=, <, <=, >, and >=
# How to use boolean / logical operators like &&, ||, and !
# Instructions
# Take a second to reflect on what you've learned so far. When you're ready, hit Save & Submit Code to start the review exercises.

if 5 >= 5
    print "End of section!"
end

===================================================

# IF, ELSE, AND ELSIF
# All right! You're all on your lonesome. (Well, not quite. We'll just leave this example here.)

a = 10
b = 11
if a < b
  print "a is less than b!"
elsif b < a
  print "b is less than a!"
else
  print "b is equal to a!"
end

# Instructions
# Create an if/else statement in the editor. Make sure to include at least one elsif. Each branch of the statement should print something to the console.

if 5 < 6
    puts "5 is less!"
elsif 5 == 6
    puts "5 is the same!"
else
    puts "5 is more!"
end


=================================================

# UNLESS
# Good! Now let's review the unless statement.

problem = false
print "Good to go!" unless problem

# Remember, this is basically a short hand if statement. It will do whatever you ask unless the condition is true. In our example, problem is false, so we don't have a problem. We print Good to go!
#
# Instructions
# Create an unless statement in the editor. The statement should print something to the console.

condition = false
unless condition
    puts "condition is true"
    condition = true
end

=================================================

# DARE TO COMPARE
# Now let's review comparators / relational operators. We've turned the tables a bit!
#
# Remember, comparators need to compare two values to each other to result in true or false

10 > 8 // true
8 > 10 // false
8 == 10 // false
8 != 10 // true

# Instructions
# We're letting you know what value (true or false) we want each variable to have, and your job is to add an expression that evaluates to the correct value using comparators.

# test_1 should be false
test_1 = 5 < 4

# test_2 = should be false
test_2 = 5 < 4.2

# test_3 = should be true
test_3 = 4.1 > 4.01

============================================

# BILLIONS OF BOOLEANS
# Home stretch! Let's go over boolean operators.

( 1 == 1 ) && ( 2 == 2 )  // true
( 1 == 2 ) || ( 2 == 2 ) // true
!( false ) // true

# With && both comparisons on the left and right must evaluate to true for the entire statement to return true. If the left side does not return true it will not bother trying the right side
# with || either the right or left side must evaluate to true. If the left side evaluates to true, the right side will not be tried because it has met the condition of one side being true.
# ! does the opposite. If you're false you're now true. if you're true you're now false! Just think of it as opposite day!
# Instructions
# The code in the editor indicates what value (true or false) we want each variable to have, and your job is to add an expression that evaluates to the correct value using boolean operators (&&, ||, or !).

# test_1 should be true
test_1 = true || false

# test_2 = should be true
test_2 = true && true

# test_3 = should be false
test_3 = false || false && false

==========================================

# WHAT YOU'LL BE BUILDING
# Now that we can direct our program using if / else statements, we can produce different results based on different user input.
#
# In this project, we'll combine control flow with a few new Ruby string methods to Daffy Duckify a user's string, replacing each "s" with "th".
#
# Instructions
# Click Save & Submit Code to see the Daffy Duckifier in action and to start building your own!

print "Thtring, pleathe!: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  puts "Nothing to do here!"
  next
end

puts "Your string is: #{user_input}"

==========================================

# GETTING USER INPUT
# First, we should print a statement to prompt the user for input, then set that input to a variable using gets.chomp.
#
# Instructions
# Use print to ask the user for input.
# Declare a variable called user_input and set it equal to the user's input using gets.chomp

print "Please enter your data"
user_input = gets.chomp.downcase
#user_input = user_input.downcase!

print user_input

=============================================

# DOWNCASE!
# We want to make sure we capture both "S" and "s" in the user's input. We could write separate if / else statements to handle this, but we can also use .downcase! to convert the user's input to all lower case. That way, we only have to search for "s".
#
# Instructions
# Call the .downcase! method on user_input. Make sure to include the ! so that the user's string is modified in-place; otherwise, Ruby will create a copy of user_input and modify that instead.

print "Please enter your data"
user_input = gets.chomp.downcase
#user_input = user_input.downcase!

print user_input

==============================================

# SETTING UP THE 'IF' BRANCH, PART 1
# All right! Time to add in a little control flow.
#
# For the if half of our branch, we want to check whether the user's input contains an "s".
#
# if string_to_check.include? "substring"
# We can do that using Ruby's .include? method, which evaluates to true if it finds what it's looking for and false otherwise.
#
# (As a general rule, Ruby methods that end with ? evaluate to the boolean values true or false.)
#
# Instructions
# We want to check user_input for the substring "s".
#
# Write an if statement in the editor. It should check to see if user_input includes "s".
# For now, print a string of your choice to the console if it finds "s".

print "Please enter your data"
user_input = gets.chomp.downcase

if user_input.include? "s"
    print user_input
else
    print "'s' not found!"
end
#print user_input

====================================

# SETTING UP THE 'IF' BRANCH, PART 2
# Good! Now let's complete our if statement.
#
# When we find "s", we want Ruby to replace every instance of "s" it finds with "th". We can do this with the .gsub! method, which stands for global substitution.
#
# The syntax looks like this:

string_to_change.gsub!(/s/, "th")

# When we get to later lessons, we'll explain why the /s/ has to be between slashes instead of between quotes. Note: you cannot put a space between gsub! and the bit in parentheses.

Remember, you want the ! at the end of the method name so that Ruby will change the string in-place.

print "Please enter your data"
user_input = gets.chomp.downcase

if user_input.include? "s"
    user_input = user_input.gsub!(/s/, "th")
    print user_input
else
    print "'s' not found!"
end
#print user_input

===============================================

# SETTING UP THE 'ELSE' BRANCH
# The hard part's over! Now we just need to let the user know if we don't find any instances of the letter "s".
#
# Instructions
# Add an else statement that displays a string to the user to let them know if there are no "s"s in their string.

print "Please enter your data"
user_input = gets.chomp.downcase

if user_input.include? "s"
    user_input = user_input.gsub!(/s/, "th")
    print user_input
else
    print "'s' not found!"
end
#print user_input

================================================

# RETURNING THE FINAL STRING—ER, "THTRING"
# Home stretch—now we want to display the Daffy Duckified string to the user. You can do that using the string interpolation we learned earlier:

my_string = "muchachos"
print "Adios, #{my_string}!"
# ==> "Adios, muchachos!"

# Instructions
# Add a puts statement that uses string interpolation to show the user their transformed string.

print "Please enter your data"
user_input = gets.chomp.downcase

if user_input.include? "s"
    user_input = user_input.gsub!(/s/, "th")
    print user_input
else
    print "'s' not found!"
end

puts "Adios, #{user_input}!"

=============================================

# CONGRATULATIONTH!
# Great work!
#
# How might you improve this project? You could:
#
# Add an additional if statement to re-prompt the user for input if they don't enter anything
# Think about how you might account for words in which the letter "c" sounds like an "s"
# Think about how you might preserve the user's original capitalization.

print "Please enter your data"
user_input = gets.chomp.downcase

if user_input.include? "s"
    user_input = user_input.gsub!(/s/, "th")
    print user_input
else
    print "'s' not found!"
    next
end

puts "Adios, #{user_input}!"
