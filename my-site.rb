require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    erb :index
  end

  # get "projects" do
  #   send_file 'public/projects.html'
  # end
end
