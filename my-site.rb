require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    send_file "static_html/home_page.html"
  end

  get "/about" do
    send_file "static_html/about_page.html"
  end

  get "/projects" do
    send_file "static_html/projects_page.html"
  end

  get "/blog" do
    send_file "static_html/blog_page.html"
  end
end
