# try block once more

def fib_up_to(first, second, max)
  i1, i2 = first, second
  while i1 <= max
    yield i1
    i1, i2 = i2, i1+i2
  end
end

# call the function
fib_up_to(2, 3, 100) { |f| print f, " " }

