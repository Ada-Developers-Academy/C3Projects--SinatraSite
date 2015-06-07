require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    @title = "LILA GARCIA"
    erb :home
  end

  get '/about' do
    @title = "About"
    erb :about
  end

  get '/projects' do
    @title = "Projects"
    erb :projects
  end

  get '/blog' do
    @title = "Blog"
    erb :blog
  end

  get '/contact' do
    @title = "Contact"
    erb :contact
  end
end
