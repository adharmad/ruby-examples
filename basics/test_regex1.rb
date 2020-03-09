# Regular expressions in ruby

line = "This is a test for Perl"

# Match a string with the provided pattern
if line =~ /Perl|Python/
  puts "Scripting language mentioned: #{line}"
end

# Substitute a pattern with a string
line1 = "This line contains Perl and Python"
line2 = line1.sub(/Perl/, 'Ruby')
puts line2

# Substitute a more complex pattern (Perl|Python) with another string
# gsub will substitute all occurances of the pattern in the string
line3 = line1.gsub(/Perl|Python/, 'Ruby')
puts line3

# Substitute all occurances of the pattern with another string
line11 = "Python Python Python"
line4 = line11.gsub(/Python/, 'Ruby')
puts line4
