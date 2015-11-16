require 'pg'
require 'json'

  db_parts = ENV['DATABASE_URL'].split(/\/|:|@/)
  username = db_parts[3]
  password = db_parts[4]
  host = db_parts[5]
  db = db_parts[7]
  con = PGconn.open(:host =>  host, :dbname => db, :user=> username, :password=> password)


	stm = db.prepare "SELECT * FROM fathers WHERE Movie.Id = 99" 
	rs = stm.execute 
    
	rs.each do |row|
    	puts row.join "\s"
    end