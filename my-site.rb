require "sinatra"
require "sinatra/reloader" # alter code in sinatra so no restart needed

class MySite < Sinatra::Base
  register Sinatra::Reloader # making line 2 active

  get "/" do
    erb :home
  end

  # get "/home" do
  #   erb :home
  # end
  #     send_file 'static/home2.html'
  #   end











end

#   get "/" do
#     send_file 'static/home2.html'
#   end
#
#   get "/home" do
#     send_file 'static/home2.html'
#   end
#
#   get "/about" do
#     send_file 'static/about.html'
#   end
#
#   get "/projects" do
#     send_file 'static/projects.html'
#   end
#
#   get "/blog" do
#     send_file 'static/blog.html'
#   end
# end

# rackup to execute
