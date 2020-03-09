# Freeze an object

class Person
  attr_accessor :first, :last
  
  def initialize(first, last)
    @first = first
    @last = last
  end

  def to_s
    @first + " " + @last
  end
end

person = Person.new("John", "Doe")
puts person.to_s

person.first = "Steve"
person.last = "Jobs"
puts person.to_s

person.freeze

if person.frozen?
    puts "Person is frozen!"
end

# This should throw a RuntimeError
person.first = "Elon"
person.last = "Musk"

