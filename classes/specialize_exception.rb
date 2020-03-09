# inherit from the Exception class

class MyException < Exception
    attr_accessor :msg
    def initialize(msg)
        @msg = msg
    end
end

# Try it out
begin
    ex = MyException.new("hello there")
    raise ex
rescue MyException => ex1
    puts ex1.msg
end

