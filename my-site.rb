require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    @title = "home"
    erb :index
  end

  get "/coffee" do
    @title = "coffee"
    erb :coffee
  end

  get "/projects" do
    @title = "projects"
    erb :projects
  end

  get "/blog" do
    @title = "blog"
    erb :blog
  end
end
