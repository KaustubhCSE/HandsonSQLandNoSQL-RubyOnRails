# Refrences:
# 1. http://stackoverflow.com/questions/252203/checking-if-a-variable-is-not-nil-and-not-zero-in-ruby
# 2. http://stackoverflow.com/questions/14349318/how-do-i-search-an-array-using-a-partial-string-and-return-the-index
# 3. http://stackoverflow.com/questions/11209613/redis-finding-hashes-by-field-values


require "redis"
require "json"
require 'open-uri'

# Use for Heroku Redis
redis = Redis.new(url: ENV["REDIS_URL"])

# Use for local connection
# redis = Redis.new

value = ARGV[0]
value = value.to_s

flag = 0

	if redis.get(value) != nil
		puts "Key Value: ", value
		puts "Record found: ",redis.get(value)
	else
		puts "No Records found"
	end
