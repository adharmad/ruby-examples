class A
  @@foo = B.new(10)

  attr_accessor :x
  def initialize(x)
    @x = x
  end
end

class B < A
  attr_accessor :s
  def initialize(x)
    @s = x.to_s
  end
end

# this does not work!
b = B.new




