# trying Proc object

p = Proc.new {
    |a| puts "Param is #{a}"
}

p.call(99)

def take_block(a, &block)
    puts block.class
    a.times {
        |i| block[i, i*i]
    }
end

take_block(3) { |n, s| puts "#{n} squared is #{s}" }
