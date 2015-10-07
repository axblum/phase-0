# Pad an Array
# I worked on this challenge [with: Jeremy  Powell]
# I spent [1] hours on this challenge. 2pm-3:15 + reflection

# 0. Pseudocode

# What is the input?
# Array of numbers

# Amount of total array length
# What you pad with.

# What is the output? (i.e. What should the code return?)
# 1 dimensional array with length equal to second input, that is padded by third input

# What are the steps needed to solve the problem?
#1. How long the array is ?
#2. How long the array should be
#3. The difference between the current length and desired length.
#4. Add in padded values as needed.
#5. Make one Godzilla(destructive)

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  difference = min_size - array.length
  while difference > 0 do
    array << value
    difference-=1
  end
  array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each {|x| new_array << x}
  difference = min_size - new_array.length

  while difference > 0 do
    new_array << value
    difference-=1
  end

  new_array
end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  difference = min_size - array.length
  while difference > 0 do
    array << value
    difference-=1
  end
  array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new(array)
  difference = min_size - new_array.length

  while difference > 0 do
    new_array << value
    difference-=1
  end
  new_array
end

# Reflection
#Were you successful in breaking the problem down into small steps?
# => I think we were able to break the problem into small steps.
#Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# I think the hardest part was starting out, I kept making some careless errors as I was typing. But after I started to get focused. We knocked it out pretty quickly.
# => Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# Our intitial solution was passing all the tests.
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# => For pad! we ended up using Array.new(array) instead of using each.
# How readable is your solution? Did you and your pair choose descriptive variable names?
# => I think our solution is very readable. I know that there are most likely better ways to use ruby idioms. For example I think we could have used a range and down to shorten the while loop(in the refactored solution)
# What is the difference between destructive and non-destructive methods in your own words?
# => A destructive method manipulates the input data and returns the output as the same object, The non destructive version returns a new object keeping the input object the same.

