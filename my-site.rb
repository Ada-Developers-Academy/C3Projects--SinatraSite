require "sinatra"
require "sinatra/reloader" # lets us update this code without having to restart Sinatra every time

# running in terminal => rackup

class MySite < Sinatra::Base
  register Sinatra::Reloader # makes line 2 active

  get "/" do
    send_file "static_html/index.html"
  end

  get "/about" do
    send_file "static_html/about.html"
  end

  get "/blog_posts" do
    send_file "static_html/blog_posts.html"
  end

  get "/projects" do
    send_file "static_html/projects.html"
  end

end
