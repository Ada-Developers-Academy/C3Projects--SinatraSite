require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/home" do
    send_file'public/Home.html'
  end

  get "/about_me" do
    send_file'public/Me.html'
  end

  get "/current_projects" do
    send_file'public/Projects.html'
  end

  get "/blog" do
    send_file'public/Blog.html'
  end
end
