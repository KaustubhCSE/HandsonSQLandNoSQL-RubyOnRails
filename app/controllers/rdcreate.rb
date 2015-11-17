require "redis"

redis = Redis.new(url: ENV["REDIS_URL"])

# redis = Redis.new(:host => "10.0.1.1", :port => 6380, :db => 15)

file = File.read("sample1.json")
  data_hash = JSON.parse(file)

  for data in data_hash['fathers']

    hmsetbyjson({ID: data['id'], Married: data['married'], Name: data['name'], Son: data['son'], Daughter: data['daughter'] })
      
  end

# redis.set('foo', 'bar');
# value = redis.get('foo');
# puts value