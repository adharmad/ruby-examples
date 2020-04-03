# try multiple inheritance by including multiple mixes

module Foo
    def foo
        puts "in foo"
    end
end

module Boo
    def boo
        puts "in boo"
    end
end

class A
    include Foo
    include Boo

    def initialize
        foo
        boo
    end
end

a = A.new
