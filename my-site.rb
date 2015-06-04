require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    @header = "THOUGHTS"
    erb :index
  	# send_file './public/index.html'
  end

  get "/about_me" do
    @header = "ABOUT ME"
    erb :about_me
#   send_file './static_html/about_me.html'
  end

  get "/pictures" do
    @header = "PICTURES"
    erb :pictures
    # send_file './static_html/pictures.html'
  end

  get "/places" do
    @header = "PLACES"
    erb :places
    # send_file './static_html/places.html'
  end

  get "/projects" do
    @header = "PROJECTS"
    erb :projects
    # send_file './static_html/projects.html'
  end

end
