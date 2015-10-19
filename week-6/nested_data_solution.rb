# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
p array[1][1][2][0]
p array.at(1).at(1).at(2).at(0)



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash.fetch(:outer).fetch(:inner).fetch("almost").fetch(3)

p hash[:outer][:inner]["almost"][3]
# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]

p nested_data.fetch(:array).at(1).fetch(:hash)
# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.each { |element| p element}
#number_array.each { |element| puts 5 + element}
number_array.map!{|element| if element.kind_of?(Array)
element.map!{|number| number + 5}
else
element +5
end}
puts number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
puts startup_names
p startup_names
=begin
What are some general rules you can apply to nested arrays?
   Nested arrays can be accessed like non nested arrays. The only issue is to keep them well documented and they should only be used when appropriate.
What are some ways you can iterate over nested arrays?
  You can use each and  puts. In addition you can add any additional control flows that will allow you to change how it gets iterated on.
Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
  Little did I know that puts was so versatile. I think it really depends on what you are trying to get out of the data structure. Its like using the right tool for the job
=end