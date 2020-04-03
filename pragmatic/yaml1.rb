require 'yaml'

test1 = ["one", "two", "three"]
yaml1 = YAML::dump(test1)

puts yaml1

test2 = YAML::load(yaml1)
puts test2

