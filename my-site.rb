require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
  	send_file './public/index.html'
  end

  # get "/about_me" do
  # 	send_file './static_html/about_me.html'
  # end

  # get "/pictures" do
  # 	send_file './static_html/pictures.html'
  # end

  # get "/places" do
  # 	send_file './static_html/places.html'
  # end

  # get "/projects" do
  # 	send_file './static_html/projects.html'
  # end

  get "/about_me" do
    erb :about_me
  end

end
