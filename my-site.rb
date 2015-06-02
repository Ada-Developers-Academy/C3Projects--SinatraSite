require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    send_file "./public/home.html"
  end

  get "/home" do
    send_file "./public/home.html"
  end

  get "/posts" do
    send_file "./public/posts.html"
  end

  get "/projects" do
    send_file "./public/projects.html"
  end

  get "/about" do
    send_file "./public/about.html"
  end

  get "/post1" do
    send_file "./public/blog_post.html"
  end
end
