
module Foo
    def test1
        puts "hello"
    end
end

class Boo
    include Foo
    
    def initialize
    end

    def test2
        puts "new hello!"
    end
end

b = Boo.new
b.test1
