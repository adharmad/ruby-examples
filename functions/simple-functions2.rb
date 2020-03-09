# more simple functions 

def print_addr(address)
    state = address["state"]
    zip   = address["zip"]

    puts "    " + address["street"]  
    puts "    " + address["city"]
    puts "    " + state + ", " + zip
end

# Melissa's address
melissa_addr = {
	"street" => "23 St George St.",  
	"city"   => "Silver Spring",
	"state"  => "MD",
	"zip"    => "20465"
}

# Sandy's address
sandy_addr = {
	"street" => "324 Campus Dr.",
	"city"   => "College Park",
	"state"  => "MD",
	"zip" 	 => "23659"
}

puts "Melissa:"
print_addr(melissa_addr)

puts "Sandy:"
print_addr(sandy_addr)
