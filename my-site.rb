require "sinatra"
require "sinatra/reloader" # makes it so we don't have to restart Sinatra
  # when execute, do it through rackup in terminal

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do # what hte user is asking
    send_file "html/home.html" # this is the response
  end

  get "/about" do
    send_file "html/about.html"
  end

  get "/blog" do
    send_file "html/blog.html"
  end

  get "/projects" do
    send_file "html/projects.html"
  end
end
