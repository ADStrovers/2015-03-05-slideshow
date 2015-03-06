require 'sinatra'
require 'json'
require 'sqlite3'
require 'pry'

DATABASE = SQLite3::Database.new("database/slideshow.db")

get "/" do
  erb :welcome
end

get "/nextslide" do
  
end

get "/lastslide" do
  
end