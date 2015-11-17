# Refrences: 
# 1. http://stackoverflow.com/questions/5410682/parsing-a-json-string-in-ruby
# 2. https://docs.mongodb.org/manual/tutorial/getting-started-with-the-mongo-shell/
# 3. https://github.com/mongodb/mongo-ruby-driver/wiki/Tutorial

require 'rubygems'
require 'json'
require 'mongo'
include Mongo

# puts Gem.loaded_specs["mongo"].version

# Use for local mongo db connection.
# db = Mongo::Client.new(['127.0.0.1:27017'],:database => 'test')

# Use for Heroku Mongo connection.
db = Mongo::Client.new(['ds037990.mongolab.com:37990'],:database => 'heroku_c0c04lxx',:user => 'admin', :password => 'admin');

coll = db["fathers"]

secID = ARGV[0]
# puts tempID

coll.find({"Married" => secID}).each do | document |
	puts document
end

