// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
name = "Andrew";
console.log(name);

// food = prompt("So what do you like to eat?");
// alert("Thats my favorite food too");




// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (var line = "#"; line.length < 8; line += "#")
  console.log(line);



// Functions

// Complete the `minimum` exercise.

function min(x,y){
	if (x <= y){
		return x;
	}
	else {
		return y;
	}
}
console.log(min( 10,5))


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

me = {
	name: "Andrew Blum",
	age: 29,
	foods: ["pizza", "cookies","pasta"],
	quirk: "I get hangry",
};
console.log(me)