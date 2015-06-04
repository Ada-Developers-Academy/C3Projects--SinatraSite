require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    @title = "Shanna's Website"
    erb :home_page
  end

  get "/about" do
    @title = "About"
    erb :about_page
  end

  get "/blog" do
    @title = "Blog"
    erb :blog_post
  end

  get "/projects" do
    @title = "Projects"
    erb :projects
  end
end
