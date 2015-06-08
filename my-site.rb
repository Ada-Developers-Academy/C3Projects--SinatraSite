require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get '/' do
    erb :index
  end

  get '/about' do
    erb :about
  end

  get '/programming' do
    erb :programming
  end


  get '/writing' do
    erb :writing
  end

  get '/:name' do
    @name = params[:name]
    erb :fourohfour
  end

end
