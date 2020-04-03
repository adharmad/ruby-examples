# reflection in ruby

class A
    def initialize
        @x = 20
    end

    def foo
        @x = 30
    end
end

class B < A
    def initialize
        super
    end
end

a = B.new
puts a.class

if a.is_a? B
    puts "Yes!"
end

if a.is_a? A
    puts "Yes again!"
end

puts a.class.superclass
