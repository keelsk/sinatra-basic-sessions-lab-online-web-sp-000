require_relative 'config/environment'

class App < Sinatra:
  configure do 
    enable :sessions
    set :session_secret, "Lefd3Z5yzrmioc2TkgiEPBcwR5L2DNOA"
  end
  
  get '/' do 
    erb :index
  end
end