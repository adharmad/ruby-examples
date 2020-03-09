#!/usr/local/bin/ruby -w
# String variables
# Run as: 
#     ruby string_type_variables.rb

# Defining a simple string
astring1 = 'this is a string'
puts astring1                           # this is a string

# Another simple string
# strings defined with %q// are single quoted
astring2 = %q/another string/
puts astring2                           # another string

# String with double quote
astring3 = 'hello " string'             
puts astring3                           # hello " string

# String with single quote
astring4 = 'single \' quote'            
puts astring4                           # single ' quote

# String with backslash
astring5 = 'backslash \\ in string'     
puts astring5                           # backslash \ in string

# A string can also be defined with double quotes
astring6 = "this is another string"     
puts astring6                           # this is another string

# Another double quoted string
astring7 = %Q/'This is nuts', said he./ 
puts astring7                           # 'This is nuts', said he.

# Double quoted string with escaped double quotes
astring8 = "embedded \" double quotes"
puts astring8                           # embedded " double quotes

# String with substitution
aint1 = 1234
astring9 = "string #{aint1} number"     
puts astring9                           # string 1234 number

# String with expression
aint2 = 5
aint3 = 6
astring10 = "adding #{aint2} and #{aint3} yields #{aint2+aint3}"
puts astring10                          # adding 5 and 6 yields 11

# multiline strings
astring11 = <<TEST
This is a multi-line string
    That contains double quotes ", single quotes ',
    backslash \ etc.
TEST

puts astring11

# adjacent single and double quoted strings are concatenated
astring12 = 'This is ' ' a split' " string" 
puts astring12                          # This is a split string


      

