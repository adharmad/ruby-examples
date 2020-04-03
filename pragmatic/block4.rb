# more advanced block constructs

lst1 = [1, 3, 5, 7, 9].find{ |v|
    v * v > 30
}

puts lst1

[1, 3, 5, 7, 9].find{ |v|
    puts v
}

lst2 = ["H", "A", "L"].collect {|x|
    x.succ
}

puts lst2

val1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].inject(0) {|sum, element|
    sum + element
}

puts val1

val2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].inject(1) {|sum, element|
    sum * element
}

puts val2
