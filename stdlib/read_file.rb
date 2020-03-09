#!/usr/local/bin/ruby -w
# read_file.rb
# Run as: 
#     ruby read_file.rb

# Open and read a file line by line.
# File is opened in read only mode
# File will be automatically closed  at the end since a block is used
File.open('read_file.rb', 'r') do |f|  
  while line = f.gets  
    puts line  
  end  
end  
