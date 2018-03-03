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
  @tCelcius1 = ((1.8) * @tCelcius.to_i) + 32
  @tCelcius2 = (@tCelcius.to_i) + +273.15
  erb :celsius
end

get '/farenheit' do
  erb :farenheit
end

post '/farenheit' do
  @tfar = params[:tfar]
  @tfar1 = ((@tfar.to_i - 32) * (0.55))
  p @tfar1.to_i
  @tfar2 = ((@tfar.to_i + 459.67) * (0.55))

  erb :farenheit
end

get '/kelvin' do
  erb :kelvin
end

post '/kelvin' do
  @tkelvin = params[:tkelvin]
  @tkelvin1 = ((1.8) * (@tkelvin.to_i) - 459.67)

  @tkelvin2 = (@tkelvin.to_i) - 273.15
  erb :kelvin
end
