require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  #@pages = [:home, :blog, :projects, :about, :contact]

  get "/" do
    erb :home
  end

  get "/blog" do
    erb :blog
  end

  get "/projects" do
    erb :projects
  end

  get "/about" do
    erb :about
  end

  get "/contact" do
    erb :contact
  end
end
