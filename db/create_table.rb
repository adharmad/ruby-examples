require "mysql"

dbname = "RUBY"

m = Mysql.new("localhost", "root@localhost", "password")
r = m.query("CREATE DATABASE #{dbname}")
m.select_db(dbname)
m.query("CREATE TABLE words (
            german varchar(30),
            english varchar(30),
            french varchar(30)
         )"
        )

m.query("INSERT INTO words VALUES('Adler', 'eagle', 'aigle')")
m.query("INSERT INTO words VALUES('Haus', 'house', 'maison')")
m.query("INSERT INTO words VALUES('Name', 'name', 'nom')")
m.query("INSERT INTO words VALUES('Wal', 'whale', 'baleine')")
m.query("GRANT ALL ON RUBY.* TO rubyuser@localhost IDENTIFIED by 'ruby'")

m.close
