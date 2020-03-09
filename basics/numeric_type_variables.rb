#!/usr/local/bin/ruby -w
# numeric variables
# Run as: 
#     ruby numeric_type_variables.rb
# Ruby integers are either FixNum (architecture word size) or BigNum 
# (limited by size of memory)

# simple integer
aint1 = 123
puts aint1

# another way to define an integer
# underscore is ignored
aint2 = 123_456
puts aint2

# hexadecimal
aint3 = 0xcafebabe
puts aint3

# a huge number which is stored in a BigNum object
aint4 = 23324_234234_234234_324345_434
puts aint4

# negative numbers are no different
aint5 = -12456
puts aint5

# floating point numbers
afloat1 = -556.456
puts afloat1

# Basic operations on numbers:

# addition, subtraction, multiplication and division
# usual rules of precedence and brackets apply
a1= 4 + 5 - 3 * 20 / (1+1)
puts a1

# if the result is too large for FixNum, automatic promotion to BigNum 
a2 = 124355555 * 235325234554
puts a2

# operation between an integer and float is promoted to Float
a3 = 12 + 33.56
puts a3

