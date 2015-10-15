# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_people)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

    raise ArgumentError.new("#{item_to_make} is not a valid input") if library.has_key?(item_to_make) == false

  serving_size = library.fetch(item_to_make)

  if num_people % serving_size == 0
    return "Calculations complete: Make #{num_people/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{(num_people.to_f/serving_size.to_f).ceil} of #{item_to_make}, you have #{serving_size - (num_people % serving_size)} leftover servings."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("pie",5)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
#p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection


