 // JavaScript Olympics

 // I paired Micheal Jasinski on this challenge.

 // This challenge took me [#] hours.


 // Bulk Up

 var athletes = [];

 var mj = {
     name: "Michael Jordan",
     event: "Men's Basketball"
 };

 function win(arr) {
     for (var element in arr) {
         arr[element].win = arr[element].name + " won the " + arr[element].event;
         console.log(arr[element].win);
     }
 };

 athletes.push(mj);
 win(athletes);


 // Jumble your words
 function backwards(string) {
     return string.split("").reverse().join("");
 }

 console.log(backwards("Hi"));


 // 2,4,6,8

 function evens(arr_num) {
     return arr_num.filter(function(value) {
         return value % 2 === 0;
     });
 };

 console.log(evens([1, 2, 4, 6, 12, 23]));
 // "We built this city"
 function Athlete(name, age, sport, quote) {
    this.name = name,
    this.age = age,
    this.sport = sport,
    this.quote = quote
 };

 var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!");
 console.log(michaelPhelps.constructor === Athlete);
 console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote);

 // sorry about this hold on


// Reflection
// What JavaScript knowledge did you solidify in this challenge ?
// 	I think the biggest thing I solidified with this challenge was call back functions. The example with the evens took me very little time to solve.
 // What are constructor functions ?
 // Constructor functions are used to create objects with a class. It simplifies the code dramatically vs literal object notation.
 // How are constructors different from Ruby classes( in your research) ?
 // I think the biggest thing is that you can not create a function that is part of the object without the use of prototypes.Ruby allows one to create the method within the class where in JS
 // you must create the constructor then extend the object, by setting the function to be a prototype of the object.
