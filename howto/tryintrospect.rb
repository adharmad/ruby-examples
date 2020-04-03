# introspection

list = Array.ancestors
puts list

class A
    def initialize
        @x = 10
        @y = 20
        @z = 30
        @name = "amol"
    end

    def foo
    end

    def boo
    end

    def hoo
    end
end

class B < A
    def initialize
        super
    end

    def haha
    end

    def hoho
    end
end

b = B.new
puts b.instance_variables
puts b.methods



