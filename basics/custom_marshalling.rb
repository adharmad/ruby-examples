# try custom marshalling

class MyObject
  attr_accessor :var1, :volatile1

  def initialize(var1, volatile1)
    @var1 = var1
    @volatile1 = volatile1
  end

  # Override this method to perform custom marshalling
  def marshal_dump
    { 
      'var1' => @var1,
      'volatile1' => @volatile1
    }
  end

  # Override this method to perform custom loading
  def marshal_load(data)
    self.var1 = data['var1']
    self.volatile1 = "Another value"
  end

  def to_s
    "#{@var1} and #{@volatile1}"
  end
end

obj = MyObject.new("Hello", "World")
puts obj.to_s

data = Marshal.dump(obj)
obj1 = Marshal.load(data)
puts obj1

