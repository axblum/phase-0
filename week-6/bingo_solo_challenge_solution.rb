# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2] hours on this challenge.


# Release 0: Pseudocode
# 1. Create the numbers to call(B-G)Followed by a number of 1..100
# 2. Grab random letter from the Array of  numbers and one of the letters
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
# 1. Create the numbers to call(B-G)Followed by a number of 1..100
# 2. Grab random letter from the Array of  numbers and one of the letters
# 3. join them together  to create the number letter combo

# Check the called column for the number called.
#fill in the outline here
# Separate out the Letter and the Number (split)
#see if the number matches one of the elements in the array(column)

# If the number is in the column, replace with an 'x'
# assign the value at which the number is called to an x

# Display a column to the console
#Iterate though the column
# this can be done by selecting the same index of each of the inner arrays

# Display the board to the console (prettily)
#fill in the outline here
# print a row above showing the letters
# then print the array with spaces or something

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letters = ["B","I","N","G","O"]
  end

  def call
    number = (1..100).to_a.sample
    letter = @letters.sample
    return letter,number
  end

  def check(letter,number)
    letter_index = @letters.index(letter)
    column = []
    @bingo_board.each do |v|
      column << v.at(letter_index)
    end
    column.each_with_index {|value,index|
      if value == number
        column[index] = "X"
      end
    }
    column.each_with_index do |value,index|
      @bingo_board[index][letter_index] = value
    end
  end
  def print
    puts @letters.join("  ")
    @bingo_board.each {|v| puts v.join("  ")}
  end
end


# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letters = ["B","I","N","G","O"]
  end

  def call
    letter = @letters.sample()
    case letter
    when "B"
      number = rand(1..15)
    when "I"
      number = rand(16..30)
    when "N"
      number = rand(31..45)
    when "G"
      number = rand(46..60)
    when "O"
      number = rand(61..75)
    end

    p letter,number
  end

  def check(letter,number)
    #Look up letter for their index position
    letter_index = @letters.index(letter)
    column = @bingo_board.map{|array| array.at(letter_index)}
    column.each_with_index do |value,index|
      if value == number
        @bingo_board[index][letter_index] = "X"
      end
    end
  end


  def print
    puts @letters.map {|i| i.center(8)}.join(" ")
    @bingo_board.each do  |array|
      puts array.map {|number|  number.to_s.center(8)}.join(" ")
    end
  end
end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
         [22, 69, 75, 65, 73],
         [83, 85, 97, 89, 57],
         [25, 31, 96, 68, 51],
         [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


# real board
real_board = [[1, 16, 31, 51, 61],
              [2, 17, 32, 46, 62],
              [10, 20, 33, 47, 63],
              [11, 30, 34, 48, 64],
              [13, 22, 35, 49, 65]]

new_game = BingoBoard.new(real_board)

#Test Code
10.times{
  letter,number = new_game.call

  new_game.check(letter,number)
  new_game.print
}
#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  I think the hardest part was understanding the instructions. I started to read a little too much into the requirements, thinking that we had to actually check to see if someone had gotten bingo.
  I think that I am definitely getting better at doing pseudocode. However I think the more important thing for me is breaking the problem down into small parts.
What are the benefits of using a class for this challenge?
  The fact that we could create instance variables, made a class super helpful. For example I made an array called @letters so that I  didn't keep having to refer to them.
How can you access coordinates in a nested array?
  There are many ways to access something within a nested array. You can use  bracket notation and you can use some methods such as the at method.
What methods did you use to access and modify the array?
  In this case I ended up using bracket notation and the map method.
How did you determine what should be an instance variable versus a local variable?
  I tried to figure out how often I would need to access the variables. For example I have a method  called , call which doesn't store its  values in the instance, it just returns values that can be passed into another  method. On the flip side, I ended up making the  bingoboard and instance variable, because it is a property of the instance that would need to be referred to over and over.
What do you feel is most improved in your refactored solution?
  I think the best part of my refactoring, was taking advantage of the map method. In addition I also  started to chain some blocks together which was neat.
=end
