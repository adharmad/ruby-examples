# inspect methods of an object

class Test
  attr_accessor :s1, :s2

  def initialize(s1, s2)
    @s1, @s2 = s1, s2
  end

  def method1
    puts "hello"
  end

  def method2
    puts "world"
  end

  def to_s
    s1.to_s + " " + s2.to_s
  end
end

test = Test.new("Hello", "World")
method_list = test.methods

puts "Printing all methods of the object a: "
method_list.each do |method|
  puts method
end

puts

puts "Let us see if it responds to method1 and method2"
puts test.respond_to?("method1")
puts test.respond_to?("method2")

puts
puts test.object_id
puts test.class
puts test.kind_of? Object
puts test.instance_of? Test

