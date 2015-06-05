require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    erb :index
  end

  get "/projects" do
    @title = "Projects"
    erb :projects
  end

  get "/about" do
    @title = "About"
    erb :about
  end

  get "/blog" do
    @title = "Blog"
    erb :blog
  end

  get "/photography" do
    @title = "Photography"
    erb :photography
  end
end
