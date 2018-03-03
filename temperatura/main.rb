require 'sinatra'
require "sinatra/reloader" if development?

get "/" do
    erb :home
end

get "/home" do
    erb :home
end

get '/celsius' do
    erb :celsius
    


end

post '/celsius' do
    @tCelcius = params[:tCelcius]
    @tCelcius = ((9/5)* @tCelcius.to_i)+32
    erb :kelvin
end


get '/farenheit' do
    erb :farenheit
end

get '/kelvin' do
    erb :kelvin
end







