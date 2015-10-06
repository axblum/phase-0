#Release 1
#Pseudocode
# 1. First generate name data
# 2. Randomize the list of groups
# 3. Split the list into groups (with the following conditions)
# =>    No one can be in a group by themselves
# =>    There must be at least three people in a group
# 4. Format the output of the Different groups

def generate(number)
  list = []
  #Generate Names for testing, I was going to load actual names but I didn't want to put the names up on github (I was gonna load the data in using the csv parser)
  (1..number).each { |e| if e.even? then list << "Joe Smith #{e}" else list << "Jane Smith #{e}" end }
  list
end
#initial solution
# def create_groups(people_list)
#   num_groups= people_list.length / 5
#   people_list.shuffle!
#   counter = 0
#   groups = []
#   while counter < people_list.length do
#       if counter + 5 <= people_list.length
#         groups << people_list[counter,5]
#         counter+=5
#       elsif counter + 4 <= people_list.length
#         groups << people_list[counter,4]
#         counter+=4
#       elsif counter + 3 <= people_list.length
#         groups << people_list[counter,3]
#         counter+=3
#       else
#         if groups[0].length == 5
#           groups[0] << people_list[counter]
#         else
#           groups[1] << people_list[counter]
#         end
#         counter+=1
#       end
#     end
#      p groups
#   end
# # Release 3
# If you run this program three times in a row, will the program give you three different outputs?
# I added a shuffle to the array so that each time the array is built, the positions get randomized
# If one person were to leave the cohort, how would the accountability groups change?
# Currently if someoene were to leave  the cohort, the program will randomize the groups again to make sure that there is at least 3 people in a group.
# How do you decide when you're done? You'll need to decide. This is much more challenging than you probably think, especially since there are no pre-written tests.
# I started to weigh the pros and cons of implementing certian features, for example I thought it was pretty important I implement a randomizer(shuffle). However, I didn't think storing
# previous results was all that important.
def create_groups(people_list)
  #Randomize  Groups
  people_list.shuffle!
  counter = 0
  groups = []
  people_list.each_slice(5) { |group| groups << group  }
  # Grab all the groups that are less than 3
  small_groups = groups.select{|group| group.length < 3 }
  # Remove all the groups that are less than 3 from the groups
  groups = groups.reject {|group| group.length < 3 }
  #For all the groups that are < 3 (which is only 1,2)
  #Distribute those into the first 2 groups with some hacks
  small_groups.each_with_index { |group,index| groups[index] << group[index]  }
  groups
  end

  def format_groups(groups)
    puts "There are #{groups.length} groups"
    groups.each_with_index do |group,index|
      puts "Group #{index+1} has the following people:"
      group.each { |person| puts person  }
    end
  end


groups = create_groups (generate(54))
format_groups(groups)
# What was the most interesting and most difficult part of this challenge?
# I Think the hardest part of this, was reinventing the each_slice method. From the begining of this problemset.
# One other thing that I found hard was from inside an each whats the best way to do a nested each so that it was readable()
# I had a feeling that I would use each_slice. However I thought it would be considered a "fancy" method. I decided to attempt to recreate the method, for my initial solution.
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# I definately think that I am getting better at breaking down the problems. I don't know if I am really getting better at pseudocode. Usually breaking down the problem into steps gets me where I need to be to solve the problem
# Was your approach for automating this task a good solution? What could have made it even better?
# I think that my solution is pretty good, I know there are things I could add to make it better. For example, right now I am generating names on the fly. I could have the file load in as csv with all the names of the people.
# What data structure did you decide to store the accountability groups in and why?
# I decided that an array of arrays would be the perfect way to store the data.The outer array would hold the postion of the group number.
# The inner array would be an array of names.
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# As I refactor more and more. I feel like I am starting to understand ruby idioms. I also am starting to realize that ruby has some very powerful methods that are at our disposal.
# I ended up using each_slice, and using reject and select, which really damn powerful. I know that doing some of these operations in other languages can be much harder. 
