require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
 	register Sinatra::Reloader

	# get '/' do
	# 	send_file './home.html'
	# end

	# get '/about' do
	# 	send_file './about.html'
	# end

	# get '/blog' do
	# 	send_file './blog.html'
	# end

	# get '/projects' do
	# 	send_file './projects.html'
	# end

	get '/' do
		@title			= "Alice Rhomieux"
		@description 	= "Hodor hodor hodor - hodor?"
		erb :index
	end

	get '/about' do
		@title			= "Alice Rhomieux -- About"
		@description 	= "About Alice Rhomieux -- a web developer in training in Seattle WA."
		erb :about
	end

	get '/blog' do
		@title			= "Bloggity blog blog"
		@description 	= "A blog about the training experience of a new web developer."
		erb :blog
	end

	get '/projects' do
		@title			= "Alice Rhomieux -- Projects"
		@description 	= "Classroom projects from Ada Developers Academy."
		erb :projects
	end

end
