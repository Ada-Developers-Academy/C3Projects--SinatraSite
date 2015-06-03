require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get '/' do
    send_file 'static/Home.html'
  end
  get '/home' do
    send_file 'static/Home.html'
  end

  get '/about' do
    send_file 'static/About.html'
  end

  get '/blog' do
    send_file 'static/Blog.html'
  end

  get '/projects' do
    send_file 'static/Projects.html'
  end

end
