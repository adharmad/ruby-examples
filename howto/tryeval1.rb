# try using eval 

class Test
  attr_accessor :amt

  def initialize(amt=25)
    @amt = amt
    @here = binding
  end

  def boo
    @amt = 100
  end
  
  def foo
    eval "puts @amt", @here
    eval "puts @amt"
  end
end

a = Test.new
a.boo
a.foo
