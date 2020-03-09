#!/usr/local/bin/ruby -w
# write_file.rb
# Run as: 
#     ruby write_file.rb
# Create a new file and write some text into it


File.open('hello.txt', 'w') do |f|  
  f.puts "This is a test"
  f.puts "Writing something"
end  

# Read the previously created file and write it to another file
fout = File.new("hello1.txt", File::RDWR|File::CREAT)
fin = File.new("hello.txt", "r")

count = 0

fin.each do |line|
    #puts line
    fout.puts(count.to_s + " " + line.chomp)
    count += 1
end

fout.close
fin.close
