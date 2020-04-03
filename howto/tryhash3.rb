# remove a hash key

hash1 = Hash.new

hash1["a"] = 10
hash1["b"] = 20
hash1["c"] = 30

puts hash1

hash1.delete("a")
hash1.delete("b")

hash1["d"] = 40

puts hash1
