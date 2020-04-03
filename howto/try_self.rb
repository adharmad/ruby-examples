class A
  attr_accessor :x
  def initialize
    @x = 10
  end

  def getSelf
    return self
  end
end

a = A.new
b = a.getSelf
puts b.x
