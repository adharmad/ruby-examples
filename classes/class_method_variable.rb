# Static methods and variables in classes
# Static variables are class-level variables and static methods are also 
# class-specific methods. 

class Test
  @@statvar = "This is a static variable" # class variable

  def initialize
  end

  def Test.static_method
    puts "This is a static method returning a static variable"
    @@statvar
  end
end

# Call the static method without creating an instance
puts Test.static_method

# Another example of class variables 

class Song
  @@plays = 0 # class variable

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
    @plays = 0
  end

  def play
    @plays += 1
    @@plays += 1
    puts "This song: #@plays plays. Total #@@plays plays."
  end
end
  
s1 = Song.new("Song1", "Artist1", 123)
s2 = Song.new("Song2", "Artist2", 456)

s1.play
s2.play
s1.play
s2.play
