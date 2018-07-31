require 'bundler'
require './models/model'
Bundler.require

class Application < Sinatra::Base
 
  get '/' do
    "Hello, Class!"
  end
  
  get '/test' do
  	"this is a test"
  end
  
    
  get '/input/:cat' do
    @user_name = params[:cat]
    "Hello #{@user_name}!"
  end
  

  get '/form' do
  	erb:index
  end
    
  post '/food' do
	"My name is #{params[:name]}, and I love #{params[:favorite_food]}"
  end
 
end
