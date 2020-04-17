require_relative 'config/environment'

class App < Sinatra::Base
      configure do
  enable :sessions
  set :session_secret, "secret"
end
  
  get '/' do 
    
    
@session = somesession
erb :index
  end
  
  post '/checkout' do 
  @item  = params[:item]
  session["item"] = @item
  erb :checkout
  end
end