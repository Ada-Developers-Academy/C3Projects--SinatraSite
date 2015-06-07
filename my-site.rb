require "sinatra"
require "sinatra/reloader" # lets us update this code without having to restart Sinatra every time

# running in terminal => rackup

class MySite < Sinatra::Base
  register Sinatra::Reloader # makes line 2 active

  get "/" do
    @pages = %w(home about projects blog)
    @current = "home"
    erb :index
  end

  get "/about" do
    @pages = %w(home about projects blog)
    @current = "about"
    erb :about
  end

  get "/projects" do
    @pages = %w(home about projects blog)
    @current = "projects"
    erb :projects
  end

  get "/blog" do
    @pages = %w(home about projects blog)
    @current = "blog"
    erb :blog
  end

end
