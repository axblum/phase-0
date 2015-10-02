# Factorial

# I worked on this challenge with Kyle.


#Original Solution Below-Refactored Solution Below>>>

def factorial(num)
  if num == 0 || num == 1
    return 1
  else
   arr = []
   (1..num).each do |x|
     arr.push(x)
   end
  until arr.length == 2 do
      arr.push(arr[-1] * arr[-2])
      arr.delete_at(-2)
      arr.delete_at(-2)
  end
  return arr[1]
  end
end

#Refactored

def factorial(num)
  if num == 0 || num == 1
    return 1
  else
    arr = []
    (1..num).each do |x|
      arr.push(x)
    end
    arr.reduce(:*)
  end
end