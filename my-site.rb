require "sinatra"
require "sinatra/reloader" # makes it so we don't have to restart Sinatra
  # when execute, do it through rackup in terminal

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/home" do # what hte user is asking
    send_file "public/home.html" # this is the response
  end

  get "/about" do
    send_file "./public/about.html"
  end

  get "/blog" do
    send_file "public/blog.html"
  end

  get "/projects" do
    send_file "./public/projects.html"
  end
end
