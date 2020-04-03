# Try block with arguments

def callBlockWithArgs
  yield("Hello", 2)
  yield("World", 5)
end

callBlockWithArgs {|str, num|
  num.times do |var|
    puts var.to_s + " " + str
  end
  
}
