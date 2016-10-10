require 'sinatra'
require 'sinatra/reloader'
require './helpers/guess_helper'

set :secret_number, generate_number

get '/' do
  params["guess"] ? answer = check_guess(params["guess"].to_i) : Tries.reset
  erb :index, locals: { random_number: settings.secret_number, 
                        answer: answer,
                        tries: Tries.number}
end