# a more complex example on classes and objects

# class address
class Address
    attr_accessor :street, :city, :state, :zip  
    def initialize
        @street = @city = @state = @zip = ""
    end

    def to_s
        "    " + @street + "\n" + \
        "    " + @city   + "\n" + \
        "    " + @state  + ", " + @zip  
    end
end

# class person
class Person
    attr_accessor :first_name, :email
    attr_accessor :last_name, :address  
    def initialize
        @first_name = @last_name = @email = ""  
        @address = Address.new
    end

    def to_s
        @first_name + " " + @last_name + " " + @email + "\n" + @address.to_s
    end
end

# now the usage
address = Address.new
address.street = "23 St George St."  
address.city   = "Silver Spring"
address.state  = "MD"
address.zip    = "20465"

sandy = Person.new
sandy.first_name = "Sandy"
sandy.last_name  = "Koh"
sandy.email = "test@example.com"
sandy.address = address

# address
puts sandy

