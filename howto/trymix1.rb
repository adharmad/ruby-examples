# try to mix and match from module SimpleModule here

require "trymod1"

class SillyClass
    include SimpleModule
end

s = SillyClass.new
s.hello
