# Reflection
## Release 1
* What does puts do?
  * puts in ruby returns 'nil' in addition to printing the output followed by a new line character.
* What is an integer? What is a float?
  * Integer -- An integer is a positive or negative number that does not contain a decimal. Example (1,-10)
  * Float -- A float is a number that contains a decimal point. Example (1.0,2.4)
* What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
  * Because floats include a decimal and integers do not, the way they handle  division is different. When you divide two integers the end result will be an integer as well. This can lead to some unexpected outcomes if you are expecting the decimal to not be lost in the result.

## Release 2
* Hours in a year
``` ruby
puts 24*365
```
* Minutes in a decade
``` ruby
puts 24*365
```
## Release 7
* How does Ruby handle addition, subtraction, multiplication, and division of numbers?
  * Ruby handles math operations as one would expect. There are a couple shortcuts to keep in mind (=operator).
* What is the difference between integers and floats?
  * Integers do not have a decimal.
  * Floats do have a decimal
* What is the difference between integer and float division?
  * When dividing two integers you will loose what would have been the decimal.
  * When dividing two floats the result will include the remainder as the decimal part of the float.
* What are strings? Why and when would you use them?
  * Strings are a data type that contains an array of characters.
  * Strings should be used for storing words and  other characters.
* What are local variables? Why and when would you use them?
  * Local variables are variables that are inside the scope that which you are working in. Local variables are to be used within methods.
* How was this challenge? Did you get a good review of some of the basics?
  * This challenge was a good review of the basics. I think it went fairly well

### Solutions
  * [4.2.1](https://github.com/axblum/phase-0/blob/master/week-4/defining-variables.rb)
  * [4.2.2](https://github.com/axblum/phase-0/blob/master/week-4/simple-string.rb)
  * [4.2.3](https://github.com/axblum/phase-0/blob/master/week-4/basic-math.rb)