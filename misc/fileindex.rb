# Create an index of a file

class IndexedFile
    attr_accessor :fileName, :indexFile, :lineFile

    def initialize(fileName)
        @fileName = fileName
        @indexFile = fileName + ".idx"
        @lineFile = fileName + ".lin"
    end

    def to_s
        s = "File " + @fileName + " will be indexed in " + @indexFile + \
            " and lined in " + @lineFile
    end

    def index
        
    end
end

# main
indexedFile = IndexedFile.new(ARGV[0])
puts indexedFile.to_s
indexedFile.index

