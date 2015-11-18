# Name: Kaustubh Mohgaonkar
# ID: 1001101770
# Net ID : kpm1770

#   References: 
# 1. http://stackoverflow.com/questions/11380438/cant-connect-to-postgresql-database-on-heroku-using-ruby-could-not-translate
# 2. https://hackhands.com/ruby-read-json-file-hash/

# Script which uses primary key to query database

require 'pg'
require 'json'

	db_parts = ENV['DATABASE_URL'].split(/\/|:|@/)
	username = db_parts[3]
	password = db_parts[4]
	host = db_parts[5]
	db = db_parts[7]
	con = PGconn.open(:host =>  host, :dbname => db, :user=> username, :password=> password)
	# con = PG.connect

	tempID = ARGV[0]	

	rs = con.exec "SELECT * FROM fathers WHERE fathers.Id = #{tempID}" 
	   	rs.each do |row|
	  	 	puts row
	    end