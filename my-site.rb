require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
 	register Sinatra::Reloader

	get '/' do
		send_file './stuff/home.html'
	end

	get '/about' do
		send_file './stuff/about.html'
	end

	get '/blog' do
		send_file './stuff/blog.html'
	end

	get '/projects' do
		send_file './stuff/projects.html'
	end

end
