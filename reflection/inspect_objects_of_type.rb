# inspect objects in the namespace

# look at objects if Numeric type
a = 111.222
b = 23.3
puts "Numeric objects: "
ObjectSpace.each_object(Numeric) {|x| puts x}
puts

class Test
  attr_accessor :x

  def initialize(x)
    @x = x
  end

  def to_s
    x.to_s
  end
end

# look at class Test objects
t1 = Test.new(10)
t2 = Test.new(20)
puts "Test objects: "
ObjectSpace.each_object(Test) {|x| puts x}
puts

