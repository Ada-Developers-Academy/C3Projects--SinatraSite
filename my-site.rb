require "sinatra"
require "sinatra/reloader" # alter code in sinatra so no restart needed

class MySite < Sinatra::Base
  register Sinatra::Reloader # making line 2 active

  get "/" do
    erb :home
  end

  get "/home" do
    erb :home
  end

  get "/about" do
    erb :about
  end

  get "/projects" do
    erb :projects
  end

  get "/blog" do
    erb :blog
  end


end


#   get "/blog" do
#     send_file 'static/blog.html'
#   end
# end

# rackup to execute
