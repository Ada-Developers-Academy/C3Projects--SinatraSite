require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get '/' do
    send_file './pages/home.html'
  end

  get '/blog' do
    send_file './pages/blog.html'
  end

  get '/about' do
    send_file './pages/about.html'
  end

  get '/projects' do
    send_file './pages/projects.html'
  end

end
