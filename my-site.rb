require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    @title = "Brenna"
    erb :index
  end

  get '/about' do
    @title = "About Me"
    erb :about
  end

  get '/projects' do
    @title = "Portfolio"
    erb :projects
  end

  get '/blog' do
    @title = "Brainspace"
    erb :blog
  end

  get '/contact' do
    @title = "Get in touch"
    erb :contact
  end

end
