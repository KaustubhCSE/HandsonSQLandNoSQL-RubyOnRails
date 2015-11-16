require "redis"

redis = Redis.new(url: ENV["REDIS_URL"])

# redis = Redis.new(:host => "10.0.1.1", :port => 6380, :db => 15)

# redis.set('foo', 'bar');
value = redis.get('foo');
puts value