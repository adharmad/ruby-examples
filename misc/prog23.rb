# try super class method

class A
    def initialize
        @i = 10
    end

    def m1
        @i = 100
    end
end

class B < A 
    def initialize
        super
    end

    def m1
        super
        puts @i.to_s
        @i = 200
        puts @i.to_s
    end
end

b = B.new
b.m1
