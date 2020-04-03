def n_times(thing)
    return lambda {|n|
        thing * n
    }
end

ntimes = n_times(10)
puts ntimes.call(4)
puts ntimes.call(6)

ntimes1 = n_times('Hello')
puts ntimes1.call(7)
