require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
   erb :home
end
get '/home' do
   erb :home
end
get '/Celsius' do
 erb :Celsius
end
get '/Farenheit' do
  erb :Farenheit
end
