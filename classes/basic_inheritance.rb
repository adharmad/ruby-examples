# Show simple inheritance. Create a class that inherits from another class
# and demonstrate how inheritance works

class Foo
    
  attr_accessor :field1

  def initialize
    puts "Calling Foo constructor"
    @field1 = "Foo::field1"
  end

  def method1
    puts "Calling Foo method1"
    puts "Value of field1 = " + @field1
  end

  def method2
    puts "Method only exists in super class"
  end
end

class Boo < Foo
  def initialize
    super
    puts "Boo constructor"
    @field1 = "Boo::field1"
  end

  def method1
    super
    puts "Calling Boo method1"
  end
end

b = Boo.new
b.method1
b.method2


# Another example of inheritance

# Song class
class Song
  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end
  
  def to_s
    "Song: #@name -- #@artist (#@duration)"
  end
end

# Inherit from Song
class KaraokeSong < Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end

  def to_s
    super + " [#@lyrics]"
  end
end

# create an object and inspect it
song1 = Song.new("Bicyclops", "Fleck", 260)
puts song1.inspect
puts song1.to_s

song2 = KaraokeSong.new("My Way", "Sinatra", 225, "And now, the...")
puts song2.to_s

