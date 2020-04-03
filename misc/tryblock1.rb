# try block

def thrice
  yield
  yield
  yield
end

thrice { puts "Hello" }
