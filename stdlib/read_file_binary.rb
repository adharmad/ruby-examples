# binary file IO

filename = "binary_file_io.rb"
fin = File.open(filename, "r")

lst = []

fin.each_byte do |ch|
    lst << ch
end

puts lst

