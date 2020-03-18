# create a database maindata.db, 
# you should delete the file if it exists when the program starts.  

# Then, for the route get ‘/’ it should display the contents of the database, using a results.erb template you create.  Hint:  Your get ‘/’ route code should do a db.execute for a SELECT statement.  It should store the results in an array called @results. Your results.erb template should display each of the results, using @results.each.
# You will need a .gitignore file in the sinatra1 directory.  It should have the single line *.db  See the previous lesson for how to create this file.
# When you are done with this exercise, follow standard procedures to push your sinatra work to github.

require 'sqlite3'
require 'sinatra'
require 'snatra reloader'

if File.exists?("maindata.db")
File.delete("maindata.db")
end    
    
 db = SQLite3::Database.new("maindata.db")

db.execute <<-SQL
    create table users(
    id integer primary key,
    email varchar,
    password varchar)
  SQL
  
db.execute("INSERT INTO users(email,password) values (bob@aol.com,pass123")
db.execute("INSERT INTO users(email,password) values (john@aol.com,pass123")
db.execute("INSERT INTO users(email,password) values (mary@aol.com,pass123")



puts my_array