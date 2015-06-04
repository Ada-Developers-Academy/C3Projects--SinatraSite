require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
# Sinatra is a module and Reloader is a class
# register activates the Reloader
  register Sinatra::Reloader

  get "/" || "/home" do
    erb :home_page
  end

  get "/about" do
    erb :about_page
  end

  get "/blog" do
    erb :blog_post
  end

  get "/projects" do
    erb :projects_page
  end
end
