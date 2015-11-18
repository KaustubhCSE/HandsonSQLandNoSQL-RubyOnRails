# 	References: 
# 1. http://stackoverflow.com/questions/11380438/cant-connect-to-postgresql-database-on-heroku-using-ruby-could-not-translate
# 2. https://hackhands.com/ruby-read-json-file-hash/

require 'pg'
require 'json'
require 'open-uri'

  db_parts = ENV['DATABASE_URL'].split(/\/|:|@/)
  username = db_parts[3]
  password = db_parts[4]
  host = db_parts[5]
  db = db_parts[7]

  # Use for Heroku PG connection.
  con = PGconn.open(:host =>  host, :dbname => db, :user=> username, :password=> password)

  # Use for local PG connection.
  # con = PG.connect
  con.exec "CREATE TABLE IF NOT EXISTS fathers(Id INTEGER PRIMARY KEY, Married VARCHAR(20), Name VARCHAR(60), Son VARCHAR(60), Daughter VARCHAR(60))"
  con.exec "DELETE FROM fathers"
  quotes="'"

  
  data_hash = JSON.parse(open("http://json-generator.appspot.com/api/json/get/bVSYVXYLCa?indent=2").read)

    for data in data_hash['fathers']

      a = data['id']
      b = quotes + data['married'].to_s + quotes
      c = quotes + data['name'].to_s + quotes
      d = quotes + data['son'].to_s + quotes
      e = quotes + data['daughter'].to_s + quotes
      con.exec("INSERT INTO fathers(Id, Married, Name, Son, Daughter) VALUES (#{a}, #{b}, #{c}, #{d}, #{e})")

    end

    puts "Data Inserted!"


   