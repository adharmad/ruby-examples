def catA
  puts caller.join("\n")
end

def catB
  catA
end

def catC
  catB
end

catC

puts
puts

class X
  attr_accessor :var
  def initialize(var)
    @var = var
  end

  def foo
    puts caller.join("\n")
  end
end

class A
  attr_accessor :x
  def initialize
    @x = X.new(10)
    @x.foo
  end
end

def test
  a = A.new
end

test
