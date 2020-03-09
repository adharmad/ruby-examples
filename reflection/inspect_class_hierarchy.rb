# Inspect class hierarchy

# Inspect the hierarchy for an existing type
klass = Fixnum
begin
  print klass
  klass = klass.superclass
  print " < " if klass
end while klass

puts
puts Fixnum.ancestors

# Inspect hierarchy for a user defined class
class Test
end

class SubTest < Test
end


puts
puts SubTest.ancestors
