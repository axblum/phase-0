# Die Class 1: Numeric

# I worked on this challenge myself
# I spent 1 hours on this challenge.

# 0. Pseudocode
# => A die has the following properties : sides
# => If sides is less than 1 side raise and ArgumentError
# => Roll
# => Get a random number that is equal to the possible sides
# => Profit

# Input: Sides (FixeNum)
# Output: a roll
# Steps:
# => A die has the following properties : sides
# => If sides is less than 1 raise and ArguementError
# => Roll
# => Get a random number that is equal to the possible sides
# => Profit


# 1. Initial Solution

class Die
  def initialize(sides)
     unless sides > 1
      raise ArgumentError.new("A die can not have less than 1 side")
    end
    @sides=sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end



# 3. Refactored Solution
class Die

  attr_reader :sides

  def initialize(sides)
     unless sides > 1
      raise ArgumentError.new("A die can not have less than 1 side")
    end
    @sides=sides
  end

  def roll
    rand(1..@sides)
  end
end






# # 4. Reflection
# What is an ArgumentError and why would you use one?
# => An ArgumentError is a subclass of the the Error class. The ArgumentError is the error type object that gets raised if an invalid parameter gets passed to a method.
# => It is very possible that someone might want to use your code in their project.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# => I think the closest thing to a new method, I used was the attr_reader. I also used rand(). They were pretty straight forward to implement.
# What is a Ruby class?
# => A ruby class how you want to describe an object, for example, we created a Die class. From this Die class we can make many different dice, each with their own number of sides
# Why would you use a Ruby class?
# => Its all about keeping things simple and DRY. When creating a class you can add methods that apply to all instances of the class. This is super helpful so you don't end up repeating yourself and do more typing than you have to.
# What is the difference between a local variable and an instance variable?
# => Local variables only exist within the method that which they are used.
# => Instance variables are properties of an instance that are available to that specific instance of the class. For example @sides would be a instance variable.
# Where can an instance variable be used?
# Instance variables and be used from anywhere inside a specific instance of that class.