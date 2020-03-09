# try transactional file based persistance
# aka serialization

require "pstore"

class Person
  def initialize(uid, age, ssn)
  end

  def to_s
    @uid + ", " + @age.to_s + ", " + @ssn
  end
end


store = PStore.new("pstore.db")
store.transaction do
  store['names'] = [ 'John', 'Steve', 'Barry' ]
  store['people']  = {
    'abcd' => Person.new('abcd', 22, '111-222-3333'),
    'efgh' => Person.new('efgh', 33, '444-555-6666')
  }
end

# now read it back in
store.transaction do
   puts "Roots: #{store.roots.join(', ')}"
   puts store['names'].join(', ')
   puts store['people'].to_s
end
