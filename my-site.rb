require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
 	register Sinatra::Reloader

	get '/' do
		send_file './home.html'
	end

	get '/about' do
		send_file './about.html'
	end

	get '/blog' do
		send_file './blog.html'
	end

	get '/projects' do
		send_file './projects.html'
	end

end
