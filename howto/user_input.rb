#!/usr/local/bin/ruby -w
# Getting user input from console
# Run as: 
#     ruby user_input.rb

puts "What is your name?"
name = gets

# remove the newline character at the end
name = name.chomp

# print out the name
puts "Hello " + name + ". How are you?"

