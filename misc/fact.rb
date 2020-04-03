# Program to calculate factorial

num = 20
fact = 1
count = 0

num.times do
	count += 1
	fact = fact * count
end

puts "Factorial of " + num.to_s + " is " + fact.to_s + "\n"
