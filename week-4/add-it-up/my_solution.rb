# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!
# Method that takes in an array and calculates the sum of all things. 
# Loop through the array adding each of the elements to the previous sum.


# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution
# def total(arr)
# 	until arr.length == 1 do
#       arr.push(arr[-1] + arr[-2])
#       arr.delete_at(-2)
#       arr.delete_at(-2)
#     end
# 	return arr[0]
# end

# def total(arr)
# 	result = 0
# 	arr.each do |value|
# 		result += value
# 	end
# 	return result
# end



# 3. total refactored solution
def total(arr)
	arr.reduce(:+)
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array
# Output: Bad Sentence
# Steps to solve the problem.

# Capitalize first element in array
# Loop through and add  elements together with space until last element
# Period after last element



# 5. sentence_maker initial solution
def sentence_maker(arr)
 	result = ""
 	arr[0].capitalize!
 	(1...arr.length).each do |index|
 		result += ( " " + arr[index].to_s)
 	end
 	return arr[0] + result +"."
 end


# 6. sentence_maker refactored solution

def sentence_maker(arr)
	string = arr.join(" ")
	string.capitalize! + "."
end

