# Refrences: 
# 1. http://stackoverflow.com/questions/5410682/parsing-a-json-string-in-ruby
# 2. https://docs.mongodb.org/manual/tutorial/getting-started-with-the-mongo-shell/
# 3. https://github.com/mongodb/mongo-ruby-driver/wiki/Tutorial


require 'rubygems'
require 'json'
require 'mongo'
include Mongo

# puts Gem.loaded_specs["mongo"].version
db = Mongo::Client.new(['ds037990.mongolab.com:37990'],:database => 'heroku_c0c04lxx',:user => 'admin', :password => 'admin')
# db = Mongo::Client.new(['127.0.0.1:27017'],:database => 'test')

# Create a new collection fathers.
coll = db["fathers"]

file = open("sample.json")
json = file.read
documents = JSON.parse(json)

 file = File.read("sample.json")
  data_hash = JSON.parse(file)

    for data in data_hash['fathers']

    	coll.insert_one({ID: data['id'], Married: data['married'], Name: data['name'], Son: data['son'], Daughter: data['daughter'] })

  	end

puts "Data inserted"
