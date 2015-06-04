require "sinatra"
require "sinatra/reloader"
require "./lib/pictures"

class MySite < Sinatra::Base
 	register Sinatra::Reloader

	get '/' do
		@title			= "Alice Rhomieux"
		@description 	= "Hodor hodor hodor - hodor?"
		erb :index
	end

	get '/about' do
		@title			= "Alice Rhomieux | About"
		@description 	= "About Alice Rhomieux -- a web developer in training in Seattle WA."
		erb :about
	end

	get '/blog' do
		@title			= "Bloggity blog blog"
		@description 	= "A blog about the training experience of a new web developer."
		erb :blog
	end

	get '/projects' do
		@title			= "Alice Rhomieux | Projects"
		@description 	= "Classroom projects from Ada Developers Academy."
		erb :projects
	end

	get '/pictures' do
		@pictures 		= Pictures::Picture.all_the_pics
		@title			= "Pretty Pictures"
		@description 	= "Some pictures to look at. Mostly landscapes with the occasional fungus."
		erb :pictures
	end

end
