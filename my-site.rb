require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    send_file './mah_html/home.html'
  end

  get "/home" do
    send_file './mah_html/home.html'
  end

  get "/about" do
    send_file './mah_html/about.html'
  end

  # get "/about.html" do
  #   send_file './mah_html/about.html'
  # end

  get "/blog" do
    send_file './mah_html/blog.html'
  end

  get "/projects" do
    send_file './mah_html/projects.html'
  end
end
