task :pgcreate

require 'pg'

begin

    con = PG.connect :dbname => 'd1nnu0ljq8lnib', :user => 'wklsemgswioymr'
    puts con.server_version

rescue PG::Error => e

    puts e.message 
    
ensure

    con.close if con
    
end
