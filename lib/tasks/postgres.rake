task :pgcreate

require 'pg'

begin

  db_parts = ENV['DATABASE_URL'].split(/\/|:|@/)
  username = db_parts[3]
  password = db_parts[4]
  host = db_parts[5]
  db = db_parts[7]
  con = PGconn.open(:host =>  host, :dbname => db, :user=> username, :password=> password)

    con.exec "CREATE TABLE Cars(Id INTEGER PRIMARY KEY, Name VARCHAR(20), Price INT)"
    con.exec "INSERT INTO Cars VALUES(1,'Audi',52642)"
    con.exec "INSERT INTO Cars VALUES(2,'Mercedes',57127)"

    rs = con.exec "SELECT * FROM Cars"

    rs.each do |row|
      puts "%s %s %s" % [ row['id'], row['name'], row['price'] ]
    end
end
