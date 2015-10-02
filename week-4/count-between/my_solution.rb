# Count Between

# I worked on this challenge myself

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  result = 0
  for integer in list_of_integers do
  	if integer >= lower_bound && integer <= upper_bound
  	result+=1
  	end
  end
  result
end

def count_between(list_of_integers,lower_bound,upper_bound)
 list_of_integers.select! { |e| e >= lower_bound && e <= upper_bound  }
 list_of_integers.length
end