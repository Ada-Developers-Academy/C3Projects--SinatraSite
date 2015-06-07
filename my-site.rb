require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    @title = "home page"
    erb :home
  end

  get "/about" do
    @title = "about"
    erb :about
  end

  get "/blog" do
    @title = "blog"
    erb :blog
  end

  get "/projects" do
    @title = "projects"
    erb :projects
  end

  get "/gallery" do
    @title = "photo gallery"
    erb :gallery
  end

  get "/thailand" do
    @title = "thailand"
    erb :thailand
  end

  get "/california" do
    @title = "california"
    erb :california
  end

  get "/belarus" do
    @title = "belarus"
    erb :belarus
  end

  get "/washington" do
    @title = "washington"
    erb :washington
  end

  get "/new_york" do
    @title = "new york"
    erb :new_york
  end

  get "/canada" do
    @title = "canada"
    erb :canada
  end
end
