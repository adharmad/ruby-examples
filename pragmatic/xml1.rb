require 'rexml/document'
include REXML

file = File.new("C:/Documents and Settings/adharmad/My Documents/OIM/adp/abcres.xml")
doc = Document.new(file)
puts doc

