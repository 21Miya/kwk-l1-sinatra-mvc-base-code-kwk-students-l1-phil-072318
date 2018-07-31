require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    "This is your home page"
  end
  
  get '/itslit' do
    erb :index
  end
  
  get '/hello/:band/:genre' do
    @bandname = params[:band]
    @genrename = params[:genre]
    "Guess what?"
    "#{@bandname} is the best #{@genrename} band!"
  end
  
  get '/survey' do
    erb: food_form
  end

end