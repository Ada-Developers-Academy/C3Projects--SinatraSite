require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    erb :index
  end

  get "/home" do
    erb :index
  end

  get "/posts" do
    @title = "Posts"
    erb :posts
  end

  get "/projects" do
    @title = "Projects"
    erb :projects
  end

  get "/about" do
    @title = "About Ashley"
    erb :about
  end

  get "/post1" do
    @title = "Blog Post 1"
    erb :blog_post
  end
end
