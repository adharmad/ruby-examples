# Some directory operations using Dir class

# print current directory
d = Dir.pwd
puts d

# create a new directory
s = File.join("c:/Users/adharmad.ORADEV/tmp", "foo")
puts s
Dir.mkdir(s)

# Print out all the entries in a directory
subDirs = Dir.entries("c:")
puts subDirs

# another way of walking a directory
Dir.foreach("c:") { |filepath|
  if File.directory?(filepath)
    puts "\t" + filepath + " is a directory"
  elsif File.file?(filepath)
    puts "\t" + filepath + " is a file"
  end
}
