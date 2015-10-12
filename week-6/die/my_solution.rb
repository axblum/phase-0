# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [.5] hours on this challenge.

# Pseudocode
# If there is less than one side, raise ArgumentError
# => if not then set labels to  the instance var
# Make assessor for sides which returns instance var @labels.length
# Get random side for roll

# Input: Array
# Output: Roll Method, Init Method,Sides Method



# Initial Solution

class Die
  def initialize(labels)
    unless labels.length >= 1
      raise ArgumentError.new("You must have at least 1 side")
    end
   @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    @labels[rand(0...@labels.length)]
  end
end



# Refactored Solution

class Die
  def initialize(labels)
    unless labels.length >= 1
      raise ArgumentError.new("You must have at least 1 side")
    end
    @labels = labels
    @sides =  @labels.length
  end

  attr_reader :sides

  def roll
    @labels.sample
  end
end







# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
    I did not have to change much in order to get a working solution the only real difference here was instead of setting the number of sides, you need to infer the number of sides by the array that was sent in.
What does this exercise teach you about making code that is easily changeable or modifiable?
    I think it shows the importance of using well named variables.
What new methods did you learn when working on this challenge, if any?
    I decided to see if there was a better way to get a random side from the array and it seems like sample did just that.
What concepts about classes were you able to solidify in this challenge?
  I tried to use the attr_reader for the sake of it. It was unclear if it was better practice or not than my intial solution. I feel pretty comfortable with making classes.
=end