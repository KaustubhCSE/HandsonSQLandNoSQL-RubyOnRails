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

val = redis.keys('*')

value = ARGV[0]
value = value.to_s

flag = 0

for item in val
	var1 = redis.get(item)
	if var1.index(value) != nil
		puts "Key Value: ", item
		puts "Record found: ",redis.get(item)
		flag = 1
	end
end

if flag == 0
		puts "No Records found"
end
