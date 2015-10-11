# Calculate the mode Pairing Challenge

# I worked on this challenge with Gabrielle Gustilo.

# I spent 1 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# Input: An array of values.
# Output:  An array of the most frequent values.
# Pseudocode:
#   define method mode, which takes one argument - "array"
#   create new Hash
#   iterate through the array
#      if element is not a key in the Hash, create key with value +1
#      if element is a key in the Hash, increment value +1
#   get max value of hash
#   check hash for other occurences of max value - return as hash
#   pull keys for max value hash

# 1. Initial Solution
def mode(array)
  results = {}
  array.each do |e|
    if results.has_key?(e)
      results[e] += 1
    else
      results[e] = 1
    end
  end
  max = results.max_by{|k,v| v}
  results.select!{|k,v| v == max[1]}
  results.keys
end


# 3. Refactored Solution

def mode(array)
  results = {}
  array.each do |e|
    results.has_key?(e) ? results[e] += 1 : results[e] = 1
  end
  max = results.max_by{|k,v| v}
  results.select!{|k,v| v == max[1]}
  results.keys
end


# Reflection
# Which data structure did you and your pair decide to implement and why?
# => We chose to use a hash as each value in the array could be turned into a key, and the value would be how many times the string shows up in the array.
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# => I think we did a very good job of breaking down the code. My partner was all about the psuedocode and it proved to be very helpful.
# What issues/successes did you run into when translating your pseudocode to code?
# => I don't think we ran into many issues, however, a couple times we thought a method would work one way, in reality it didn't always give us the info the way we wanted. We just had to pick off the pieces we needed to make it work.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# => We used each and select! when neccessary. I don't think they were all that hard to implement, I see this as a good sign as Its becoming more second nature to use a block.