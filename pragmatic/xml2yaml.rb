require 'rexml/document'
require 'yaml'
include REXML

file = File.new("C:/Documents and Settings/adharmad/My Documents/OIM/adp/abcres.xml")
doc = Document.new(file)


yaml1 = YAML::dump(doc)

puts yaml1

