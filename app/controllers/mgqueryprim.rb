
require 'rubygems'
require 'json'
require 'mongo'
include Mongo

# puts Gem.loaded_specs["mongo"].version
# mongo_uri = ENV['MONGOLAB_URI']
# client = Mongo::Client.new([mongo_uri],:database => 'heroku_c0c04lxx');
# client = Mongo::Client.new(['127.0.0.1:27017'],:database => 'test')
# db = client.database
# db.fathers.each{|name| puts name }

# res = db[:test].find()
# puts res.class

# Create a new collection fathers.
# db = Mongo::Client.new(['127.0.0.1:27017'],:database => 'test')
db = Mongo::Client.new(['ds037990.mongolab.com:37990'],:database => 'heroku_c0c04lxx',:user => 'admin', :password => 'admin');

# db[:test].find(:Married => 'true').each {|document| puts document }

tempID = ARGV[0]
puts tempID

db[:test].find(:ID => 2).each do | document |
	puts document
end