module Foo
  def boo
    raise "you must implement boo"
  end
end

class A
  include Foo

  def initialize
    puts "calling A initialize"
  end
  
  def boo
    puts "BOO!"
  end
end

a = A.new
a.boo
