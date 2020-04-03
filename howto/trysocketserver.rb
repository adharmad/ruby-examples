# simple http server in ruby

require 'socket'
server = TCPServer.new('127.0.0.1', 9090)

while (session = server.accept)
  request = session.gets
  puts request
  session.print "HTTP/1.1 200/OK\rContent-type: text/html\r\n\r\n"
  session.print "<html><head><title>Response from Ruby Web server</title></head>\r\n"
  session.print "<body>request was:"
  session.print request
  session.print "</body></html>"
  session.close
end
