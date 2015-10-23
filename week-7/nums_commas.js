// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Ronny .

// Pseudocode
// define function called seperateComma that takes in a number.
// split number into array
// reverse array
// if array.length is <= 3 return number
// else
//group array in 3s
//insert commas between elements
//reverse array
// join array back together

// Initial Solution
// var separateComma = function(number) {

//   if(number.length <= 3) {
//     return number;
//   }

//   var splitNumber = number.toString().split("");

//   var revSplitNumber = splitNumber.reverse();

//   for(var i = 0; i < revSplitNumber.length; i+=4) {

//       revSplitNumber.splice(i, 0,",");
//   }

//   revSplitNumber.reverse()


//   revSplitNumber.pop();
//   console.log(revSplitNumber.join(""));


// }



// separateComma(123456);




// Refactored Solution 1
// This would work with mixed results, I assume its because the locale isn't always set correctly.
// separateComma = function (num) {
// return num.toLocaleString();
// };
// console.log(separateComma(123456));


var separateComma = function(number) {

    // if (number.length <= 3) {
    //     return number;
    // }

    var splitNumber = number.toString().split("").reverse();

    var revSplitNumber = splitNumber

    for (var i = 0; i < revSplitNumber.length; i += 4) {

        revSplitNumber.splice(i, 0, ",");
    }

    revSplitNumber.reverse();


    revSplitNumber.pop();
    console.log(revSplitNumber.join(""));


}



separateComma(123456);
separateComma(123);



// Your Own Tests (OPTIONAL)




// // Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// One of the things that we had to account for when solving this problem with JavaScript is that there are less built in methods that we could take advantage of.
// We approached the problem in two different ways. The first being starting from the end of the string and splicing.
// The second way we through about inserting the commas,was taking about the number Locale. However we kept getting mixed results.
// it appeared to not be supported by all the systems we used.
// What did you learn about iterating over arrays in JavaScript?
// Iterating over arrays in JavaScript is a little more tedious. However its very similar to other languages.
// What was different about solving this problem in JavaScript?
//  I think the biggest difference is that we had to be a little more creative about it.
// What built-in methods did you find to incorporate in your refactored solution?
// Instead of trying to loop things, we looked for toLocaleString()
