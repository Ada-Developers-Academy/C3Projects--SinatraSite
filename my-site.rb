require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get '/' do
    send_file 'public/index.html'
  end

end
