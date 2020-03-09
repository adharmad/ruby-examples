#!/usr/local/bin/ruby -w
# Two ways to iterate an array
# Run as: 
#     ruby array_iteration.rb

friends = ["phoebe", "monica", "chandler", "spencer"]

friends.each do |friend|
  puts friend
end

friends.length.times do |i|
  puts "elem number #{i} = #{friends[i]}"
end

friends.sort.reverse.length.times do |i|
  puts friends[i].capitalize
end
