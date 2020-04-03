# try mixin

module A
    def doit
        puts "doing it!"
    end
end

class B
    include A

    def initiaize
        puts "Creating B"
    end

    def foo
        puts "B::foo()"
    end
end

b = B.new
b.foo
b.doit
