require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    send_file './html/home.htm'
  end

  get "/about" do
    send_file './html/about.htm'
  end

  get "/projects" do
    send_file './html/projects.htm'
  end

  get "/blog" do
    send_file './html/blog.htm'
  end

  get "/ultimate" do
    send_file './html/ultimate.htm'
  end
end
