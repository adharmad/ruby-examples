# Very basic block call
def callBlock
  yield
  yield
end

callBlock {
  puts "We are inside the block!"
}

# Pass parameters to the block
def callBlock1
  
end
