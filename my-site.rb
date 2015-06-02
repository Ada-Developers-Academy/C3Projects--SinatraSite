require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    send_file './public/Home.htm'
  end

  get "/About" do
    send_file './public/About.htm'
  end

  get "/Projects" do
    send_file './public/Projects.htm'
  end

  get "/Blog" do
    send_file './public/Blog.htm'
  end

  get "/Ultimate" do
    send_file './public/Ultimate.htm'
  end
end
