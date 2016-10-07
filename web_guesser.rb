require 'sinatra'
require 'sinatra/reloader'

random_number = rand(100).to_s

get '/' do
  erb :index, locals: { random_number: random_number }
end