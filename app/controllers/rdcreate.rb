# Refrences: 
# 1. https://devcenter.heroku.com/articles/heroku-redis
# 2. http://stackoverflow.com/questions/5410682/parsing-a-json-string-in-ruby

require "redis"
require "json"
require 'open-uri'


# Use for Heroku Redis
redis = Redis.new(url: ENV["REDIS_URL"])

# Use for Local Redis
# redis = Redis.new

data_hash = JSON.parse(open("http://json-generator.appspot.com/api/json/get/bVSYVXYLCa?indent=2").read)

  for data in data_hash['fathers']
	
	redis.set data['id'], [data['married'], data['name'], data['son'], data['daughter']].to_json

  end

puts "Data inserted!"
