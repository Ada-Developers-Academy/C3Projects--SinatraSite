require "sinatra"
require "sinatra/reloader"
require "./lib/website"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    @title = "home"
    erb :index
  end

  get "/about" do
    @title = "about"
    erb :about
  end

  get "/projects" do
    @title = "projects"
    erb :projects
  end

  get "/blog" do
    @title = "blog"
    erb :blog
  end

  get "/travels" do
    @title = "travels"
    erb :travels
  end
  
end
