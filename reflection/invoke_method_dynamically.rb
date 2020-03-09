# call methods dynamically on classes

puts "teststring".send(:length)
puts "teststring".send("sub", /str/, '_hello_')

class Point
  attr_accessor :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end

  def shift(paramx, paramy)
    @x = @x + paramx
    @y = @y + paramy
  end

  def to_s
    "(" + @x.to_s + ", " + @y.to_s + ")"
  end
end

point = Point.new(1, 2)
send_message = point.method(:shift)
send_message.call(3, 4)
send_message1 = point.method(:to_s)
puts send_message1.call

