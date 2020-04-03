# try the webrick web server

require 'webrick'
include WEBrick

s = HTTPServer.new(:Port => 9090,
                   :DocumentRoot => Dir::pwd + "/htdocs")
trap("INT"){ s.shutdown }
s.start
