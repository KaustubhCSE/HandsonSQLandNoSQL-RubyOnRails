require 'pg'
require 'json'

  db_parts = ENV['DATABASE_URL'].split(/\/|:|@/)
  username = db_parts[3]
  password = db_parts[4]
  host = db_parts[5]
  db = db_parts[7]
  con = PGconn.open(:host =>  host, :dbname => db, :user=> username, :password=> password)
  # con = PG.connect

  tempID = ARGV[0].to_s	

	rs = con.exec "SELECT * FROM fathers WHERE fathers.married like '%#{tempID}%'" 
    
	rs.each do |row|
    	puts row
    end