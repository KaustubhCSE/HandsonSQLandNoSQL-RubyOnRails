task :mgcreate

begin

require 'mongo'
puts Gem.loaded_specs["mongo"].version

mongo_uri = ENV['MONGOLAB_URI']
client = Mongo::Client.new(mongo_uri);
db = client.database
db.collection_names.each{|name| puts name }

end