# traversing the object space

ObjectSpace.each_object do |o|
    printf "%20s: %s\n", o.class, o.inspect
end
