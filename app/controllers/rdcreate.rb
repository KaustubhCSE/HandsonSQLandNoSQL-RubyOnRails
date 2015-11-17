require "redis"
require "json"
require 'open-uri'
# redis = Redis.new(url: ENV["REDIS_URL"])

redis = Redis.new

data_hash = JSON.parse(open("http://json-generator.appspot.com/api/json/get/bVSYVXYLCa?indent=2").read)

  for data in data_hash['fathers']
	
	redis.set data['id'], [data['married'], data['name'], data['son'], data['daughter']].to_json

  end

puts "Data inserted!"

# redis.set "foo", [1, 2, 3].to_json
# value = JSON.parse(redis.get(2))
# value  = redis.get(2)
# puts value