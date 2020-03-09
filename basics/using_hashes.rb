#!/usr/local/bin/ruby -w
# Hash variables
# Run as: 
#     ruby using_hashes.rb
# A hash is a collection of name-value pairs. Indexes can be arbitrary
# objects. 

# defining a hash
h1 = Hash['a', 100, 'b', 200, 'c', 300]
puts h1

h2 = Hash['a'=> 100, 'b' => 200, 'c' => 300]
puts h2

h3 = {'a'=> 100, 
      'b' => 200, 
      'c' => 300}
puts h3

# Get keys of as hash
h4 = {
    'test1' => 123,
    'test2' => 456,
    'test3' => 789
}

h4.keys.each {|k|
    puts k
}

# Another way of creating a hash
h5 = Hash.new
h5['aa'] = 'aax'
h5['bb'] = 'bbx'

puts h5

# Sized hash
h6 = Hash.new(10)
for i in 1..10 do
  h6[i.to_s] = i
end

puts h6
