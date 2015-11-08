// Pseudocode
// Function to create new list
// Function to add an item
// Function to remove item
// update items (just return add)
"use strict";
function list() {
    return {};
}

function add(list, item, quantity) {
    list[item] = quantity;
}

function remove(list, item) {
    delete list[item];
}

function update(list, item, quantity) {
    return add(list, item, quantity);
}

function print(list) {
    for (var prop in list) {
        console.log("Item: " + prop + " Quantity: " + list[prop]);
    }
}

var shopping = list();
add(shopping, "Lemonade", 2);
add(shopping, "Tomatoes", 3);
add(shopping, "Onions", 1);
add(shopping, "Ice Cream", 4);
remove(shopping,"Lemonade");
update(shopping, "Ice Cream", 1);
print(shopping);

// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// The idea that you can pass functions into other functions
// What was the most difficult part of this challenge?
// This was pretty straight forward
// Did an array or object make more sense to use and why?
// I used an object. A shopping list follows the paradigm of an object better than an array
