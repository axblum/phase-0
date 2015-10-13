# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode
# Create a guessing game that takes in a number that the game is out of(input).
# If the guess is above the guess return high
# If the guess is lower than the answer return low
# If the guess is correct. Then set solved to true

# Input: an integer of what the number is out of  (max)
# Output:
# => :high, solved? ,:low
# Steps:
# 1. Init with @answers
# 2. Calculate if guess is high/low/correct (save last guess)
# 3. If guess is correct set solved? to true


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @last_guess = guess
    if @answer < guess
       :high
    elsif @answer > guess
      :low
    else
      :correct
    end
  end

  def solved?
    @answer == @last_guess ?  true : false
    end
end





# Refactored Solution


class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  # Make sure you define the other required methods, too
  def guess(guess)
    @last_guess = guess
    if @answer < guess
       :high
    elsif @answer > guess
      :low
    else
      :correct
    end
  end

  def solved?
    @answer == @last_guess
    end
end




# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  A method is very much like doing an action. For example when you guess a number you call the guess method with the number you guessed as the argument. Instance variables are the properties that each instance has.
When should you use instance variables? What do they do for you?
  Instance variables allow every instance to have properties that differentiate
  each instance. If you have two dog instances, one with the name Bob and one as Fred. Each of the dogs are going to weigh different amounts and this can be stored as an instance variable.
Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
I didn't really have any trouble with the flow control. However, I wonder if I could condense the if/elseif/else a little more while still making it readable.
Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  Symbols are immutable, and also take up a lot less memory than a string. The fact that we are not going to ever change what :high/:low/:medium equate too, makes it a great opportunity to use symbols
=end