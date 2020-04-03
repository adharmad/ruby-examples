# try initializing modules

module Foo
    attr_accessor :x
    @x = 10
end

class Boo
    include Foo

    def initialize
        puts "x = " + @x.to_s
    end
end

a = Boo.new
