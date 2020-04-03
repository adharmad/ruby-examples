# try pass by reference

def passbyref (ref_lst)
    ref_lst += [1]
    ref_lst += [2]
    ref_lst += [3]
end

def passbyref1 (ref_lst)
    ref_lst << 1
    ref_lst << 2
    ref_lst << 3
end

lst = []
puts lst
passbyref1 (lst)
puts lst
