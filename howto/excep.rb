class Ex1 < Exception
    attr_accessor :msg
    def initialize(msg)
        @msg = msg
    end
end

begin
    ex = Ex1.new("hello there")
    raise ex
rescue Ex1 => ex1
    puts ex1.msg
end
