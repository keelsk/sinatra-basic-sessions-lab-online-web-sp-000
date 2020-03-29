require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  
  configure do 
    enable :sessions
    set :session_secret, "Lefd3Z5yzrmioc2TkgiEPBcwR5L2DNOA"
  end
  
  get '/' do 
    @session = session
    erb :index
  end
  
  post '/checkout' do
    session[:item] = params[:item]
    binding.pry
    erb :purchase
  end
  
end