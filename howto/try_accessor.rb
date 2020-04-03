# try accessor methods without underlying data

class ABC
  attr_accessor :x, :y
  def initialize
    @x = 10
  end
end

a = ABC.new
puts a.x
puts a.y

a.x = 20
a.y = 21

puts a.x
puts a.y
