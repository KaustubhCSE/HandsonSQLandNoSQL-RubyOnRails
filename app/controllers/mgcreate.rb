# Refrences: http://stackoverflow.com/questions/5410682/parsing-a-json-string-in-ruby


require 'rubygems'
require 'json'
require 'mongo'
include Mongo

# puts Gem.loaded_specs["mongo"].version
mongo_uri = ENV['MONGOLAB_URI']
client = Mongo::Client.new(['ds037990.mongolab.com:37990'],:database => 'heroku_c0c04lxx',:user => 'admin', :password => 'admin');
# client = Mongo::Client.new(['127.0.0.1:27017'],:database => 'test')
# db = client.database
# db.fathers.each{|name| puts name }

# res = db[:test].find()
# puts res.class

# Create a new collection fathers.
# db = Mongo::Client.new(['127.0.0.1:27017'],:database => 'test')



file = open("sample1.json")
json = file.read
documents = JSON.parse(json)


 file = File.read("sample1.json")
  data_hash = JSON.parse(file)

    for data in data_hash['fathers']

    	db[:test].insert_one({ID: data['id'], Married: data['married'], Name: data['name'], Son: data['son'], Daughter: data['daughter'] })

  	end

puts "Data inserted"

 db[:test].find(:Married => 'true').each {|document| puts document }
# data.each do |data|
# documents.each do |document|
# 	client[:fathers].insert_one(document.to_s)
# # 	result = client[:fathers].insert_one(data)



# documents = client[:fathers].find()
# documents.each do |document|
# 	puts document


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