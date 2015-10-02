# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below
# Yes I know that this would normally be doing with each
def array_concat(array_1, array_2)
  result = []
  for value in array_1 do
      result.push(value)
    end
    for value in array_2 do
        result.push(value)
      end
      result
    end

def array_concat(array_1,array_2)
  container = [array_1,array_2]
  container.flatten
end
