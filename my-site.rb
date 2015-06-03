require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    send_file "public/home_page.html"
  end

  get "/about" do
    send_file "public/about_page.html"
  end


  get "/blog" do
    send_file "public/blog_post.html"
  end


  get "/projects" do
    send_file "public/projects.html"
  end
end
