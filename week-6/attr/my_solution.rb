#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData
  attr_reader :name
  def initialize
    @name = "Andrew"
  end

end


class Greetings
  def initialize
    @name_data = NameData.new
  end
  def greet
    puts "Hi #{@name_data.name}"
end



# Reflection
# Release 1
# What are these methods doing?
# =>  These methods are doing one of two things. The first are printing the instance variables with some formatting. The second type of method is they are changing the instance variables.
# # How are they modifying or returning the value of instance variables?
# => We are setting the variable by using the = operator.

# Release 2: Identify the Changes

# What changed between the last release and this release?
# => We are taking advantage of the attr_reader and writer. These expose the instance variable with the same name.
# What was replaced?
# => The Method that accessed the age was changed to an :attr_reader
# Is this code simpler than the last?
# => Yes the code is simpler there is no need to write a method that all it does is return an instance variable

# Release 3: More Changes

# What changed between the last release and this release?
# => We have not been introduced to the :attr_accessor, which allows for the setting and getting of the values.
# Is this code simpler than the last?
# => This is  a lot simpler




# Release 6
# What is a reader method?
# =>  A reader method gets the value of a specific instance variable
# What is a writer method?
# => A writer allows the value of an instance variable to be changed as if there was a method to set the value
# What do the attr methods do for you?
# => They can be super helpful in keeping the code simple and concise.
# Should you always use an accessor to cover your bases? Why or Why not?
# => I think it makes sense to use attr_reader a fair amount. However I see the use of the attr_writer slightly more limited. The reason being that I can see times where you do not want people directly changing instance variables without some kind of check first.
# What is confusing to you about these methods?
# => It was pretty clear