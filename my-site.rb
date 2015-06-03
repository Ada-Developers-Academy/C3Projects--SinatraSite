require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    send_file "./public/html_blog/home.html"
  end

  get "/blog" do
    send_file "./public/html_blog/blog.html"
  end

  get "/projects" do
    send_file "./public/html_blog/projects.html"
  end

  get "/about" do
    send_file "./public/html_blog/about.html"
  end

  get "/contact" do
    send_file "./public/html_blog/contact.html"
  end

end
