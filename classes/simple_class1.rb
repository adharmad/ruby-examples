# introduction to classes

# Address class
class Address
  def initialize(street)
    @street = street
  end

  def street
    @street
  end

  def street=(street)
    @street = street
  end

end

# Person class with automatic accessors and getters
class Person
  attr_accessor :name, :age, :sex
  attr_reader :id

  def initialize
    @name = ""
    @age = 0
    @sex = ""
    @id = -1
  end

  def to_s
    "name: " + @name + ", age: " + @age.to_s + ", sex: " + @sex
  end
end

add1 = Address.new("1 Wall Street")
puts add1.street

add1.street = "1 Main Street"
puts add1.street

p1 = Person.new
p1.name = "Warren Buffet"
p1.age = 100
p1.sex = "M"

puts p1.to_s
