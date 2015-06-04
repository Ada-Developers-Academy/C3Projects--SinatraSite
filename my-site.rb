require "sinatra"
require "sinatra/reloader" # makes it so we don't have to restart Sinatra
  # when execute, do it through rackup in terminal

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do # what hte user is asking
    erb :index # this is the response
  end

  get "/about" do
    erb :about
  end

  get "/blog" do
    erb :blog
  end

  get "/projects" do
    erb :projects
  end
end
