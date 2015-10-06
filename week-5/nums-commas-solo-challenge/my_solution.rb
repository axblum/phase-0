# Numbers to Commas Solo Challenge

# I spent .5 hours on this challenge (First interation) I spent maybe 2 hours on the second iteration.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode


# What is the input?
# An integer
# What is the output? (i.e. What should the code return?)
#String
# What are the steps needed to solve the problem?
# The code for this will take in an number and place the commas in the appropriate place
# We can start from the back of the array, placing an comma every three digits until its less than 3.
# Wondered if there was a more idiomatic way for me to iterate and skip steps. (I ended up coming back to this and managed to come up with solution by hacking the rubydocs together)
# 1. Initial Solution
def separate_comma(number)
	number = number.to_s.split('')
	index = number.length
	while index > 3 do
			number.insert(index-3,",")
		index-=3
	end
	number.join
end




# 2. Refactored Solution

# I knew I wanted to use the slice(like) function, but I had to bend it sideways to make it work.
def separate_comma(number)
	number = number.to_s.split('')
	sliced_array = []
	number.reverse.each_slice(3) { |group| sliced_array.push(group)  }
	# For every slice in the array we need reverse the array then we need to piece it back together adding the comma after every slice (This was a royal pain to figure out) (The constant reversing)
	sliced_array.reverse.map{|i| i.reverse.join}.join(",")
end

# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# My First approach was to attempt to convert the number into a string, where we would split each digit into a string.
#Staring from the end  of the string I would determine if the length was more than three if so I would add a comma.
# Was your pseudo code effective in helping you build a successful initial solution?
#I think psuedocode makes one think about the problem before attempting to solve the problem. So yes I think it was helpful
# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
#So I was determined to figure out a way to make my solution a little more rubyesk. I knew that I needed to some slicing of the array.
# I ended up using a couple methods. each_slice and map and join. It was a little hard to debug at first but as I worked it line by line. I began to get a clearer idea of how it would fit together.
# How did you initially iterate through the data structure?
# I knew that we needed to start from the end of the array skipping the parts that do not require a comma.
# Do you feel your refactored solution is more readable than your initial solution? Why?
# I feel that my refactored version is a little more readable. However there are parts that I question whether its  actually more readable.The fact that I had to reverse the array so many times within the block makes it a little harder to read.
# With that said I think that my refactored solution takes advantage of how powerful ruby can be. 