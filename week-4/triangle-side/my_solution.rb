
# I worked on this challenge with Danielle Cameron
def valid_triangle?(a,b,c)
		if (a+b> c) && (a+c> b) && (b+c>a)
			true
		elsif (a==b) && (b==c) && (a==c)
			true
		else
			false
		end
end