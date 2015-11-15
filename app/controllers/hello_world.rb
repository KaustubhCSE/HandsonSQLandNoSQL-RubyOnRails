# Refrences: http://stackoverflow.com/questions/5410682/parsing-a-json-string-in-ruby


require 'rubygems'
require 'json'
require 'mongo'
include Mongo

# puts Gem.loaded_specs["mongo"].version
mongo_uri = ENV['MONGOLAB_URI']
client = Mongo::Client.new([mongo_uri],:database => 'heroku_c0c04lxx');
# client = Mongo::Client.new(['127.0.0.1:27017'],:database => 'test')
db = client.database
db.test.each{|name| puts name }

# res = db[:test].find()
# puts res.class

# Create a new collection fathers.
# client = Mongo::Client.new(['127.0.0.1:27017'],:database => 'fathers')

# coll = db.collection("fathers")

# file = open("sample.json")
# json = file.read

# data = JSON.parse(json)

# data1 = clientoll.insert(data)

# puts "Inserted"

# result = client[:artists].insert_one({ name: 'FKA Twigs' })
# result.n #=> returns 1, because 1 document was inserted.

# result = client[:artists].insert_many([
#   { :name => 'Flying Lotus' },
#   { :name => 'Aphex Twin' }
# ])
# result.n


# Query to find based on first name
# client[:test].find(:first_name => 'ArsenalFC').each{|name| puts name }

# res.each{|name| puts name }