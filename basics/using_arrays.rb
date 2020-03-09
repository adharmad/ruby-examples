#!/usr/local/bin/ruby -w
# Array variables
# Run as: 
#     ruby using_arrays.rb
# Arrays are ordered, indexed collection of any objects. Array indices
# start at 0. Negative indices are relative to the end of the array

# defining an array
a1 = Array.[]('a', 'b', 'c')
a2 = [1, 2, 3]
a3 = Array["hello", "world"]

print a1, "\n"
print a2, "\n"
print a3, "\n"

# create an array of a specified size
# all elements are initialized to nil
a4 = Array.new(10)
print a4, "\n"


# arrays can hold different yypes of objects
a5 = [1, 2.3, 'foo']
print a5, "\n"

# Get element at specified index
a6 = ['a', 'b', 'c', 'd', 'e']
puts a6[4]                              # 'e'

# concatenate array
a7 = [1, 2, 3] + [77, 88, 99]
print a7, "\n"

# array size
a8 = [4, 5, 6, 7]
puts "size of a8 = " + a8.size.to_s

# iterate over elements of an array
a9 = ['hello', 'this', 'is', 'a', 'test']
a9.each {|elem|
  puts 'element = ' + elem
}

# set element at
a10 = ['a', 'b', 'c']
print a10, "\n"
a10[2] = 'last element'
print a10, "\n"

# remove elements from the array
a11 = ['this', 'is', 'a', 'test']
print a11, "\n"
a11.delete_at(2)
print a11, "\n"

# or remove a specific element from the array
a12 = ['hello', 'we', 'are', 'saying', 'hello']
print a12, "\n"
a12.delete('hello')
print a12, "\n"

# flatten a nested array
a13 = [1, 2, [3, 4, 5], [6, 7, [8, 9, [10]]], 11]
print a13, "\n"
print a13.flatten, "\n"

# the array supports stack operations i.e. push and pop
# push appends the element to the end of the array
# pop removes element from the end of the array
a14 = [1, 2, 3, 4, 5]
print a14, "\n"
a14.push(10)
print a14, "\n"
a14.pop # remove last element i.e. 10
a14.pop # remove last element i.e. 5
print a14, "\n"

# reverse an array
a15 = ['a', 'b', 'c', 'd', 'e']
print a15, "\n"
print a15.reverse, "\n"

# transpose an array
# assumes that the object is an array of arrays of appropriate rows and
# columns (like a matrix) and performs a transpose
# i.e. 
# 1 2                           1 3 5
# 3 4            =>             2 4 6    
# 5 6

a16 = [['a', 'b', 'c'], ['d', 'e', 'f']]
print a16, "\n"
print a16.transpose, "\n"

# permutation of an array
# invoked with a block
# get all permutations of all possible elements of the array
a17 = [1, 2, 3]
print a17, "\n"
print a17.permutation.to_a, "\n"

# sorting arrays
a18 = [5, 4, 3, 2, 1]
print a18, "\n"
print a18.sort, "\n"

# arrays also respect the - and * operators
a19 = [1, 2, 3, 4, 5, 6]
a20 = [2, 3, 4]
print (a19 - a20), "\n"

a21 = ['test']
print a21 * 5, "\n"


