# try an interface

module A
  def haha
    puts "haha"
  end
end

class B
  include A

  def initialize
    puts "calling B initialize"
  end
end

b = B.new
b.haha

puts b.is_a? A
