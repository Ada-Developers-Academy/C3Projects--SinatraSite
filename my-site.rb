require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    send_file './html/home.htm'
  end

  get "/About" do
    send_file './html/about.htm'
  end

  get "/Projects" do
    send_file './html/projects.htm'
  end

  get "/Blog" do
    send_file './html/blog.htm'
  end

  get "/Ultimate" do
    send_file './html/ultimate.htm'
  end
end
