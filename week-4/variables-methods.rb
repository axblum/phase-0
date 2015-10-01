def greeting
	puts "Please enter your first name:"
	f_name = gets.chomp
	puts "Please enter your middle name:"
	m_name = gets.chomp
	puts "Please enter your last name:"
	l_name = gets.chomp
	puts "Welcome to the party #{f_name} #{m_name} #{l_name}"
end

greeting

def number
	puts "Enter a Number:"
	number = gets.chomp
	puts number.to_i + 1
end

number

# How do you define a local variable?
# A variable is defined by using the equal sign. (bar = baz)
# How do you define a method?
# Methods are defined by the "def" keyword
# What is the difference between a local variable and a method?
# A local variable is a stored entity. Where as a method is a stored procedure.
# How do you run a ruby program from the command line?
# ruby  <filename>
# How do you run an RSpec file from the command line?
#rspec <filename>
# What was confusing about this material? What made sense?
#I think this information is pretty straight forward. It was all pretty clear.