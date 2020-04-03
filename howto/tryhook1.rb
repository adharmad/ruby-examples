# try hook for new method

class Class
  alias_method :old_new,  :new
  def new(*args)
    result = old_new(*args)
    result.timestamp = Time.now
    return result
  end
end

class Object
  attr_accessor :timestamp
end

class Test
end
obj1 = Test.new
sleep 2
obj2 = Test.new
puts obj1.timestamp
puts obj2.timestamp

