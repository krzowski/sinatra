require 'sinatra'
require 'sinatra/reloader'
require './helpers/guess_helper'

set :secret_number, rand(100)

get '/' do
  guess = check_guess(params["guess"].to_i) if params["guess"]  
  erb :index, locals: { random_number: settings.secret_number, guess: guess }
end