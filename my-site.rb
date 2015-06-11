require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    @title = "Home"
    erb :home
  end

  get "/propaganda" do
    @title = "Propaganda"
    erb :propaganda
  end

  get "/about" do
    @title = "About"
    erb :about
  end
  #
  get "/projects" do
    @title = "Projects"
    erb :projects
  end
  #
  get "/blog" do
    @title = "Blog"
    erb :blog
  end
  #
  get "/ultimate" do
    @title = "Ultimate"
    erb :ultimate
  end
end
