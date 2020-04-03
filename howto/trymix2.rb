module Foo
    attr_accessor :x, :y

    def haha
        @x = 1
        @y = 2
        puts "x = " + @x.to_s + ", y = " + @y.to_s
    end
end

class Boo
    include Foo

    def initialize
        haha
        @x = 10
        @y = 20
    end

    def haha1
        puts "xx = " + @x.to_s + ", yy = " + @y.to_s
    end
end

a = Boo.new
a.haha1
