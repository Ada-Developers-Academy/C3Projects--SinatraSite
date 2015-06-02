require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    send_file 'views/index.html'
  end

  get "/index.html" do
    redirect '/'
  end

  get "/about" do
    send_file 'views/about.html'
  end

  get "/blag" do
    send_file 'views/blag.html'
  end

  get "/projects" do
    send_file 'views/projects.html'
  end

  get "/projects/solar-system" do
    send_file 'views/projects/solar-system.html'
  end

  get "/projects/set-clone" do
    send_file 'views/projects/set-clone.html'
  end

  get "/projects/euler-problems" do
    send_file 'views/projects/euler-problems.html'
  end
end
