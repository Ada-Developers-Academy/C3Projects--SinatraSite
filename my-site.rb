require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    send_file "public/home_page.html"
  end

  get "/about" do
    send_file "public/about.html"
  end

  get "/blog_post" do
    send_file "public/blog_post.html"
  end

  get "/projects" do
    send_file "public/projects.html"
  end

end
