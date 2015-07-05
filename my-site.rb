require "sinatra"
require "sinatra/reloader"
require "./lib/website"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    @title = "home"
    erb :index
  end

  # get "/:title" do
  #   @title = Website::Title.new(params[:title])
  #   erb :title
  # end

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

  # get "/:name" do
  #   @image  = Website::Images.new(params[:name])
  #   erb :pics
  # end

end
