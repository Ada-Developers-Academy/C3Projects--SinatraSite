require "sinatra"
require "sinatra/reloader"
require "./lib/pictures"

class MySite < Sinatra::Base
 	register Sinatra::Reloader

 	BASE_TITLE 			= "A Rhx"
 	BASE_WITH_SEPARATOR = BASE_TITLE + " | "

	get '/' do
		@title			= BASE_TITLE
		@description 	= "Hodor hodor hodor - hodor?"
		erb :index
	end

	get '/about' do
		@title			= BASE_WITH_SEPARATOR + "about"
		@description 	= "About A Rhx -- web developer in training in Seattle WA."
		erb :about
	end

	get '/blog' do
		@title			= BASE_WITH_SEPARATOR + "bloggity blog blog"
		@description 	= "A blog about the training experience of a new web developer."
		erb :blog
	end

	get '/projects' do
		@title			= BASE_WITH_SEPARATOR + "projects"
		@description 	= "Classroom projects from Ada Developers Academy."
		erb :projects
	end

	get '/pictures' do
		@pictures 		= Pictures::Picture.all_the_pics
		@title			= BASE_WITH_SEPARATOR + "pretty pictures"
		@description 	= "Some pictures to look at. Mostly landscapes with the occasional fungus."
		erb :pictures
	end
end
