#!/usr/local/bin/ruby -w
# Iterate over the name-value pairs in a hash
# Run as: 
#     ruby hash_iteration.rb

h1 = {
    'Chicago' => 'Illinois',
    'San Francisco' => 'California',
    'Orlando' => 'Florida',
    'Austin' => 'Texas',
    'Minneapolis' => 'Minnesota'
}

h1.each {|k,v|
    puts "The city #{k} is in state: #{v}"
}
