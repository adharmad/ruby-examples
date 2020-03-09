# read file

# by lines
def read_by_line(filename)
    f = File.open(filename, 'r')
    f.each_line { |line|
        puts line
    }
    f.close
end

def read_by_byte(filename)
    f = File.open(filename, 'r')
    f.each_byte { |b|
        putc b
        print ","
    }
    f.close
end

read_by_line('read_file.rb')
read_by_byte('read_file.rb')

