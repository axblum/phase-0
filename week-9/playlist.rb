# Create a Playlist from Driver Code

# I worked on this challenge [Andrew,Deanna].
# I spent [#] hours on this challenge.


# Pseudocode



# Initial Solution
# class Song
#   def initialize(title,artist)
#     @title = title
#     @artist = artist
#   end
#   def play
#     p "Currently playing #{@title} by #{@artist}"
#   end
#   def display
#     p "#{@title} by #{@artist}"
#   end
# end

# class Playlist
#   attr_reader :num_of_tracks
#   def initialize(*songs)
#     @songs = songs
#     @num_of_tracks = @songs.length
#   end
#   def add(*songs)
#     @songs << songs
#     @songs.flatten!
#   end
#   def remove(title)
#     @songs.delete(title)
#   end
#   def includes?(title)
#     @songs.include?(title)
#   end
#   def play_all
#     @songs.each do |song|
#       song.play
#       sleep(1)
#     end
#   end
#   def display
#     @songs.each do |song|
#       song.display
#     end
#   end
# end

# Refactored Solution


class Song
  def initialize(title,artist)
    @title = title
    @artist = artist
  end
  def play
    p "Currently playing #{@title} by #{@artist}"
  end
  def display
    "#{@title} by #{@artist}"
  end
end

class Playlist
  attr_reader :num_of_tracks
  def initialize(*songs)
    @songs = songs
    @num_of_tracks = @songs.length
  end
  def add(*songs)
    @songs << songs
    @songs.flatten!
  end
  def remove(title)
    @songs.delete(title)
  end
  def includes?(title)
    @songs.include?(title)
  end
  def play_all
    @songs.each do |song|
      song.play
      sleep(1)
    end
  end
  def display
    @songs.each_with_index do |song,index|
      p "#{index+1}: #{song.display}"
    end
  end
end



# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection

# Reflection
# What concepts did you review in this challenge?
# This exercise gave me a good refresher of working with objects
# What is still confusing to you about Ruby?
# I would like to have a better understanding of modules
# What are you going to study to get more prepared for Phase 1?
# I think I am going to re visit the basics.