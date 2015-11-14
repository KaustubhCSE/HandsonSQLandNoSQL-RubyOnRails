task :pgcreate

require 'pg'

begin

    con = PG.connect

    con.exec "CREATE TABLE Cars(Id INTEGER PRIMARY KEY, Name VARCHAR(20), Price INT)"
    con.exec "INSERT INTO Cars VALUES(1,'Audi',52642)"
    con.exec "INSERT INTO Cars VALUES(2,'Mercedes',57127)"



    rs = con.exec "SELECT * FROM Cars"

    rs.each do |row|
      puts "%s %s %s" % [ row['id'], row['name'], row['price'] ]
    end
end
