# Invoke a class dynamically by calling eval

class Test
  def initialize
    puts "Calling the initialize method"
  end

  def testMethod
    puts "Calling the test method"
  end
end

str = "Test.new"
test = eval(str)
test.testMethod

