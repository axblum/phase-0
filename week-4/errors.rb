# Analyze the Errors

# I worked on this challenge Myself.
# I spent [1] hours on this challenge.

# --- error -------------------------------------------------------

 cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 16/17
# 3. What is the type of error message?
# Could not find the end
# 4. What additional information does the interpreter provide about this type of error?
# No additional information was needed to understand this error
# 5. Where is the error in the code?
# A missing end to end the method
# 6. Why did the interpreter give you this error?
# cause

# --- error -------------------------------------------------------

south_park = "TV show"

# 1. What is the line number where the error occurs?
#36
# 2. What is the type of error message?
# undefined variable
# 3. What additional information does the interpreter provide about this type of error?
# this is a name error
# 4. Where is the error in the code?
# south_park was not declared as anything
# 5. Why did the interpreter give you this error?
# ruby did not know what to assign to this variable. 

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
# NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# This error is because we are trying to call a method that has not been defined
# 4. Where is the error in the code?
# 51
# 5. Why did the interpreter give you this error?
# This error is because we are trying to call a method that has not been defined

# --- error -------------------------------------------------------

def cartmans_phrase(phrase)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 70
# 2. What is the type of error message?
# This is an arguementError.
# 3. What additional information does the interpreter provide about this type of error?
#This also tells where the error is happening
# 4. Where is the error in the code?
# 67/70
# 5. Why did the interpreter give you this error?
# This is because we are trying to pass an arguement into a method that currently takes no arguements

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("THis is an offensive_message")

# 1. What is the line number where the error occurs?
#89
#
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# It also lets us know where the method is actually being called
# 4. Where is the error in the code?
# 89
# 5. Why did the interpreter give you this error?
# There is a mismatch in the method signature



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie("A lie", 'A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 107
# 2. What is the type of error message?
# ArguementError
# 3. What additional information does the interpreter provide about this type of error?
# The line which the method is called
# 4. Where is the error in the code?
#  111
# 5. Why did the interpreter give you this error?
# This is because we are giving cartmans_lie the correct number of arguments# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 126
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# It states that a string and an Integer can not be combined
# 4. Where is the error in the code?
# 126
# 5. Why did the interpreter give you this error?
# Integers and Strings can not be combined

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 141
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# The error occurs on 141
# 4. Where is the error in the code?
# 141
# 5. Why did the interpreter give you this error?
# You can't  divide by zero

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 157
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# It also gives you the location where it expects to see the file
# 4. Where is the error in the code?
# 157
# 5. Why did the interpreter give you this error?
# The file the interpreter is looking for does not exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.


# Which error was the most difficult to read?
# I don't think any of the errors were hard to read, however they can be misleading. For example the error where the 'end' was missing can be very difficult to find if the code is not properly indented. 
# How did you figure out what the issue with the error was?
# I looked at the structure of the code, and noticed that there was an end missing
# Were you able to determine why each error message happened based on the code? 
#Yes
# When you encounter errors in your future code, what process will you follow to help you debug?
# I think the most important thing for debugging code, is not to have bad code in the first place. It is important to format the code correctly so that syntax errors can be identified easily.
# It is also a good idea to comment ones code with the expected outcomes to help prevent errors