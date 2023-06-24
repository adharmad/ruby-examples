# simple.rb - simple MySQL script using Ruby MySQL module

require "mysql"

begin
  # connect to the MySQL server
  dbh = Mysql.real_connect("localhost", "root", "password", "mysql")
  # get server version string and display it
  puts "Server version: " + dbh.get_server_info
rescue MysqlError => e
  print "Error code: ", e.errno, "\n"
  print "Error message: ", e.error, "\n"
ensure
  # disconnect from server
  dbh.close
end
