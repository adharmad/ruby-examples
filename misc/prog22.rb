# try calling a block

def twice
    yield
    yield
end

twice { puts "Hello World" }

def names
    yield("Joe")
    yield("Sandy")
    yield("Melissa")
end

names do |name|
    puts "Hello " + name + ", how are you?"  
end
