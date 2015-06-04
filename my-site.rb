require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get '/' do
    erb :index
  end

  get '/about' do
    send_file 'public/about.html'
  end

  get '/programming' do
    send_file 'public/programming.html'
  end

  get '/writing' do
    send_file 'public/writing.html'
  end

end
