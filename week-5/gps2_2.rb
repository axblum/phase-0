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
add_item(shopping_list, "Tomotoes", 3)
add_item(shopping_list, "Onions", 1)
add_item(shopping_list, "Ice Cream", 4)
print_list(shopping_list)
remove_item(shopping_list, "Lemonade")
update_item(shopping_list, "Ice Cream", 1)
print_list(shopping_list)

