# Exception Handling

s = "1 + +  / 2"

begin
    eval s
rescue Exception => e
  puts "Handling error: " + e.to_s
ensure
    puts "Ensuring!"
end


# catch exception

i = 10
j = 0

begin
    i/j
rescue StandardError
    puts "we are here"
end

