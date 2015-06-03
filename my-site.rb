require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    send_file "public/home.html"
  end

  get "/coffee" do
    send_file "public/about.html"
  end

  get "/projects" do
    send_file "public/projects.html"
  end

  get "/blog" do
    send_file "public/blog.html"
  end
end
