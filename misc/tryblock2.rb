# try block once more

def fib_up_to(max)
  i1, i2 = 1, 1
  while i1 <= max
    yield i1
    i1, i2 = i2, i1+i2
  end
end

# call the function
fib_up_to(100) { |f| puts f }
fib_up_to(100) { |f| print f, " " }

