# introspect a class

class Demo
  def initialize
  end

private 
  def privMethod
  end

protected
  def protMethod
  end

public
  def pubMethod
  end

  def Demo.classMethod
  end

  CONST = 1.23
end

#puts Demo.private_instance_methods.join(" ")
puts (Demo.private_instance_methods - Demo.superclass.private_instance_methods).join(" ")
#puts Demo.protected_instance_methods.join(" ")
puts (Demo.protected_instance_methods - Demo.superclass.protected_instance_methods).join(" ")
#puts Demo.public_instance_methods.join(" ")
puts (Demo.public_instance_methods - Demo.superclass.public_instance_methods).join(" ")
puts Demo.singleton_methods.join(" ")
puts (Demo.constants - Demo.superclass.constants).join(" ")
