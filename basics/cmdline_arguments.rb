#!/usr/local/bin/ruby -w
# Getting command line arguments
# Run as: 
#     ruby cmdline_arguments.rb <arg1> <arg2> <arg3>
# In ruby, command line arguments are stored in a variable ARGV

puts "Number of command line arguments = #{ARGV.length}"

ARGV.each {|arg|
    puts arg
}


