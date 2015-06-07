require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    @header = "THOUGHTS"
    erb :index
  end

  get "/about_me" do
    @header = "ABOUT ME"
    erb :about_me
  end

  get "/pictures" do
    @header = "PICTURES"
    erb :pictures
  end

  get "/places" do
    @header = "PLACES"
    erb :places
  end

  get "/projects" do
    @header = "PROJECTS"
    erb :projects
  end

end
