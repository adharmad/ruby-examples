#!/usr/local/bin/ruby -w
# some useful methods on strings
# Run as: 
#     ruby string_methods.rb
# All string methods are documented here:
# http://corelib.rubyonrails.org/classes/String.html
# 
# As with other ruby methods, a method ending in "!" is destructive
# and will alter the actual object state

puts "hello_world".capitalize           # Hello_world
puts "test".upcase                      # TEST
puts "ABCD".downcase                    # abcd
puts "camelCase".swapcase               # CAMELcASE
puts "america".reverse                  # acirema

# convert string to int
puts "1234".to_i + "5678".to_i          # 6912

# string to float
puts "11.22".to_f + "33.44".to_f        # 44.66

# concatenate strings
puts "hello" + "_" + "world"            # hello_world

# copy a string n times
puts "tofa " * 3 + "laya " * 3

# <=> operator
# returns -1, 0 or 1 based on whether the string on the left side is
# less than, equal or greater than the string on the right side
"abcde" <=> "abcde"                     # 0
"Abcde" <=> "abcde"                     # -1
"abcde" <=? "Abcde"                     # 1

# check if strings are equal
astr1 = "foo"
astr2 = "foo1"
puts astr1.eql?(astr2)                  # false

# index of substring
# the index starts from zero
puts "hello".index('e')                 # 1
puts "world".index('ld')                # 3

# remove leading and trailing whitespace and \n characters
# other methods are lstrip and rstrip
puts "    hello    ".strip             # "hello"

# split string using split 
"this is a string".split.each {|s|
  puts s
}

# printing a string byte by byte
"ragamuffin".each_byte {|b|
  puts b
}







