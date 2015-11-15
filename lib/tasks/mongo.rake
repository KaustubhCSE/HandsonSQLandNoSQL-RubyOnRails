task :mgcreate

begin

require 'mongo'

puts Gem.loaded_specs["mongo"].version
# mongo_uri = ENV['MONGOLAB_URI']
# client = Mongo::Client.new(mongo_uri);
db = Mongo::Client.new(['127.0.0.1:27017'],:database => 'test')
# db = client.database
res = db[:test].find()
puts res.class
#res.each{|name| puts name }

end