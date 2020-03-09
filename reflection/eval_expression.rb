# evaluate expression at runtime

def calculate (op1, operator, op2)
    string = op1.to_s + operator + op2.to_s
    eval (string)
end

alpha = 25
beta = 15

puts calculate(324, "*", 245)
