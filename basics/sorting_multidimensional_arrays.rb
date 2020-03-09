# sorting multi-dimensional arrays

# NOTE: This is not working. Need to check why

require 'pp'

people = [
  ["Steve", "Jobs"],
  ["Elon", "Musk"],
  ["Jeff", "Bezos"],
  ["Bill", "Gates"]
]

pp people

# sort by first name
people.sort do |a, b|
  a[0] <=> b[0]
end

pp people

# sort by last name
people.sort do |a, b|
  a[1] <=> b[1]
end

pp people
