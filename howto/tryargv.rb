# print out argv (command line arguments)

puts ARGV.length

ARGV.length.times do |i|
    puts i.to_s + " => " + ARGV[i].to_s
    
end

