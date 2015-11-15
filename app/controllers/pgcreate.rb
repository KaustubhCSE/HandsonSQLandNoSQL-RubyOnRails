# 	References: 
# 1. http://stackoverflow.com/questions/11380438/cant-connect-to-postgresql-database-on-heroku-using-ruby-could-not-translate
# 2. https://hackhands.com/ruby-read-json-file-hash/

require 'pg'
require 'json'

  db_parts = ENV['DATABASE_URL'].split(/\/|:|@/)
  username = db_parts[3]
  password = db_parts[4]
  host = db_parts[5]
  db = db_parts[7]
  con = PGconn.open(:host =>  host, :dbname => db, :user=> username, :password=> password)
  	# con = PG.connect
    con.exec "CREATE TABLE IF NOT EXISTS fathers(Id INTEGER PRIMARY KEY, Married VARCHAR(20), Name VARCHAR(20), Son VARCHAR(20), Daughter VARCHAR(20))"

    file = File.read("sample1.json")
    data_hash = JSON.parse(file)

    for data in data_hash['fathers']
    # data_hash['fathers'].each do |id|
      a = data['id']
      b = data['married']
      c = data['name']
      d = data['son']
      e = data['daughter']
      res = con.exec_params('INSERT INTO fathers VALUES ($a, $b, $c, $d, $e)', [a, b, c, d, e])    
      # insert = con.prepare "INSERT INTO fathers (Id, Married, Name, Son, Daughter) VALUES(?,?,?,?,?"
      # insert.execute (data['id'], data['married'], data['name'], data['son'], data['daughter'])
    end

    
    # con.exec "INSERT INTO Cars VALUES(2,'Mercedes',57127)"

    # rs = con.exec "SELECT * FROM Cars"

    # rs.each do |row|
    #   puts "%s %s %s" % [ row['id'], row['name'], row['price'] ]
