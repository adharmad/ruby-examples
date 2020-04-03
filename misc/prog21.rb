# address book using classes

class AddressBook
    def initialize
        # empty array
        @persons = []
    end
    
    def add(person)
        @persons += [person]
        @persons = @persons.sort{|a,b| by_name(a,b)}
    end

    def remove(person)
        @persons.delete(person)
    end

    def by_name(a,b)
        if  a.first_name  == b.first_name  
            a.last_name  <=> b.last_name
        else
            a.first_name <=> b.first_name  
        end
    end

    def to_s
        retstr = ""
        @persons.each do |person|
            retstr += person.to_s + "\n"
        end
        return retstr
    end

    # Iterators
    def each
        @persons.each {
            |p| yield p
        }
    end

    def each_address
        @persons.each {
            |p| yield p.address
        }
    end
end

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

# now use it!

# Amol
amol_addr = Address.new
amol_addr.street = "400 2nd ave"
amol_addr.city = "san francisco"
amol_addr.zip = "94118"
amol_addr.state = "california"

amol = Person.new
amol.first_name = "Amol"
amol.last_name = "Dharmadhikari"
amol.email = "amol@pk4.org"
amol.address = amol_addr

# Vishal
v_addr = Address.new
v_addr.street = "somewhere in ambarnath"
v_addr.city = "ambarnath"
v_addr.zip = "421501"
v_addr.state = "maharashtra"

v = Person.new
v.first_name = "Vishal"
v.last_name = "Panchal"
v.email = "vishal_panchal@capgemini.com"
v.address = v_addr

# Naga
n_addr = Address.new
n_addr.street = "somewhere in san jose"
n_addr.city = "san jose"
n_addr.zip = "12345"
n_addr.state = "california"

n = Person.new
n.first_name = "Naga"
n.last_name = "Nagarajan"
n.email = "naga@thortech.com"
n.address = n_addr

# new address book
book = AddressBook.new
book.add n
book.add amol
book.add v

puts book


