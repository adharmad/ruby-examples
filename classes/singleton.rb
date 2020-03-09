# Singleton class example
# A Singleton is a class of which there can be only one instance

class Logger
  private_class_method :new
  @@logger = nil

  def Logger.create
    @@logger = new unless @@logger
    @@logger
  end
end

l1 = Logger.create
l2 = Logger.create

puts l1.object_id
puts l2.object_id 
