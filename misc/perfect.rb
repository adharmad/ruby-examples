# Search for perfect numbers below a limit

# get factors of a number
def factorize(num)
  factors = Array.new
  num.times do |i|
    next if i < 1
    if num%i == 0
      factors += [i]
    end
  end

  return factors
end

def sumFactors(factors)
  sum = 0
  factors.length.times do |idx|
    sum += factors[idx]
  end

  return sum
end

# main
limit = ARGV[0]
#puts limit

limit.to_i.times do |i|
  next if i == 0
  factors = factorize(i)
  sum = sumFactors(factors)
  #puts i.to_s + " [" + factors.join(", ") + "] " + sum.to_s
  if sum == i
    puts i.to_s + " = " + factors.join(" + ")
  end
end
