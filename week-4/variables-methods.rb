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