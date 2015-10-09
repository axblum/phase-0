def new_list
  {}
end

def add_item(shopping_list,item, qty)
  shopping_list[item] = qty
end
def remove_item(shopping_list, item)
  shopping_list.delete(item)
end

# def update_item(shopping_list,item, qty)
#   shopping_list[item] = qty
# end

alias :update_item :add_item


#add_item(shopping_list, "Apples", 5)
#add_item(shopping_list, "Peach", 2)
#puts "Shopping list will contain apples and peaches"
#p shopping_list

#remove_item(shopping_list, "Apples")
#puts "removed apples"
#p shopping_list
#puts "Update qty of an item"
#update_item(shopping_list, "Peach", 10)

#p shopping_list

def print_list(shopping_list)
  puts "This is your shopping list"
  shopping_list.each{|k,v| puts "Item: #{k}    Quantity: #{v}" }
end


shopping_list = new_list
add_item(shopping_list, "Lemonade", 2)
add_item(shopping_list, "Tomatoes", 3)
add_item(shopping_list, "Onions", 1)
add_item(shopping_list, "Ice Cream", 4)
print_list(shopping_list)
remove_item(shopping_list, "Lemonade")
update_item(shopping_list, "Ice Cream", 1)
print_list(shopping_list)
# What did you learn about pseudocode from working on this challenge?
# => Sadly I didn't do pseudocode for this exercise and I most definitely should have. I am working hard to make sure that I am pseudocoding for challenges to come. I think the best part of pseudocoding is that allows for the solution to broken down line by line. So that when you go to translate it you aren't really thinking about the logic, but just what methods to use.
# What are the tradeoffs of using Arrays and Hashes for this challenge?
# => While both could most likely be used, my partner and I found that it would make more sense for us to use a hash. The reason we used a hash is because, the key is the item, and qty is the value.
# What does a method return?
# => A method returns the last evaluated. unless explicitly told to return something else.
# What kind of things can you pass into methods as arguments?
# => You can pass almost anything in to a method. Including another method.
# How can you pass information between methods?
# You can assign what a method returns into a variable, then pass that variable into the other method.
# What concepts were solidified in this challenge, and what concepts are still confusing?
# => I think there were two things that I feel comfortable with now. The first being, a method that just returns an empty hash. For a little bit during the GPS, I couldn't remember how to make a hash. Thanks to our guide, I don't think there was anything that I am still not understanding in this exercise

